; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, i32, i32, i32*, i32*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IPSEC_PROTO_ANY = common dso_local global i32 0, align 4
@xfrm_state_lock = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XFRM_STATE_ACQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_update(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  %8 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %9 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %8, i32 0, i32 9
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IPSEC_PROTO_ANY, align 4
  %13 = call i32 @xfrm_id_proto_match(i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  store %struct.xfrm_state* null, %struct.xfrm_state** %5, align 8
  %14 = call i32 @spin_lock_bh(i32* @xfrm_state_lock)
  %15 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.xfrm_state* @__xfrm_state_locate(%struct.xfrm_state* %15, i32 %16, i32 %20)
  store %struct.xfrm_state* %21, %struct.xfrm_state** %4, align 8
  %22 = load i32, i32* @ESRCH, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %25 = icmp ne %struct.xfrm_state* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %46

27:                                               ; preds = %1
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %29 = call i64 @xfrm_state_kern(%struct.xfrm_state* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  store %struct.xfrm_state* %32, %struct.xfrm_state** %5, align 8
  %33 = load i32, i32* @EEXIST, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %46

35:                                               ; preds = %27
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %37 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XFRM_STATE_ACQ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %44 = call i32 @__xfrm_state_insert(%struct.xfrm_state* %43)
  store %struct.xfrm_state* null, %struct.xfrm_state** %3, align 8
  br label %45

45:                                               ; preds = %42, %35
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %31, %26
  %47 = call i32 @spin_unlock_bh(i32* @xfrm_state_lock)
  %48 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %49 = icmp ne %struct.xfrm_state* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %52 = call i32 @xfrm_state_put(%struct.xfrm_state* %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %164

58:                                               ; preds = %53
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %60 = icmp ne %struct.xfrm_state* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %63 = call i32 @xfrm_state_delete(%struct.xfrm_state* %62)
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %65 = call i32 @xfrm_state_put(%struct.xfrm_state* %64)
  store i32 0, i32* %2, align 4
  br label %164

66:                                               ; preds = %58
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  %69 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %70 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %69, i32 0, i32 0
  %71 = call i32 @spin_lock_bh(i32* %70)
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @XFRM_STATE_VALID, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @likely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %157

81:                                               ; preds = %66
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %83 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %82, i32 0, i32 7
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %81
  %87 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %88 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %87, i32 0, i32 7
  %89 = load i32*, i32** %88, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %93 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %92, i32 0, i32 7
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 7
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @memcpy(i32* %94, i32* %97, i32 4)
  br label %99

99:                                               ; preds = %91, %86, %81
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %106 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %105, i32 0, i32 6
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %111 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %110, i32 0, i32 6
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %114 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @memcpy(i32* %112, i32* %115, i32 4)
  br label %117

117:                                              ; preds = %109, %104, %99
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %133, label %120

120:                                              ; preds = %117
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %122 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %121, i32 0, i32 5
  %123 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %124 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %123, i32 0, i32 5
  %125 = call i64 @memcmp(i32* %122, i32* %124, i32 4)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120
  %128 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %129 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %128, i32 0, i32 5
  %130 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %131 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %130, i32 0, i32 5
  %132 = call i32 @memcpy(i32* %129, i32* %131, i32 4)
  br label %133

133:                                              ; preds = %127, %120, %117
  %134 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %135 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %134, i32 0, i32 4
  %136 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %137 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %136, i32 0, i32 4
  %138 = call i32 @memcpy(i32* %135, i32* %137, i32 4)
  %139 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %140 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %143 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %142, i32 0, i32 2
  %144 = load i64, i64* @jiffies, align 8
  %145 = load i64, i64* @HZ, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @mod_timer(i32* %143, i64 %146)
  %148 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %149 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %133
  %154 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %155 = call i32 @xfrm_state_check_expire(%struct.xfrm_state* %154)
  br label %156

156:                                              ; preds = %153, %133
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %156, %66
  %158 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %159 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %158, i32 0, i32 0
  %160 = call i32 @spin_unlock_bh(i32* %159)
  %161 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %162 = call i32 @xfrm_state_put(%struct.xfrm_state* %161)
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %157, %61, %56
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local i32 @xfrm_id_proto_match(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xfrm_state* @__xfrm_state_locate(%struct.xfrm_state*, i32, i32) #1

declare dso_local i64 @xfrm_state_kern(%struct.xfrm_state*) #1

declare dso_local i32 @__xfrm_state_insert(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @xfrm_state_check_expire(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
