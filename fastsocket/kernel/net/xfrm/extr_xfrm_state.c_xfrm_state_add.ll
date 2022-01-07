; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_state.c_xfrm_state_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.net = type { i32 }

@IPSEC_PROTO_ANY = common dso_local global i32 0, align 4
@xfrm_state_lock = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm_state_add(%struct.xfrm_state* %0) #0 {
  %2 = alloca %struct.xfrm_state*, align 8
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.xfrm_state*, align 8
  %5 = alloca %struct.xfrm_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %2, align 8
  %10 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %11 = call %struct.net* @xs_net(%struct.xfrm_state* %10)
  store %struct.net* %11, %struct.net** %3, align 8
  %12 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %13 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %17 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %15, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %22 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @IPSEC_PROTO_ANY, align 4
  %26 = call i32 @xfrm_id_proto_match(i64 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %28 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  store %struct.xfrm_state* null, %struct.xfrm_state** %5, align 8
  %31 = call i32 @spin_lock_bh(i32* @xfrm_state_lock)
  %32 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call %struct.xfrm_state* @__xfrm_state_locate(%struct.xfrm_state* %32, i32 %33, i32 %34)
  store %struct.xfrm_state* %35, %struct.xfrm_state** %4, align 8
  %36 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %37 = icmp ne %struct.xfrm_state* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %1
  %39 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  store %struct.xfrm_state* %39, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  %40 = load i32, i32* @EEXIST, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %119

42:                                               ; preds = %1
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %84

51:                                               ; preds = %45
  %52 = load %struct.net*, %struct.net** %3, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %55 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.xfrm_state* @__xfrm_find_acq_byseq(%struct.net* %52, i32 %53, i64 %57)
  store %struct.xfrm_state* %58, %struct.xfrm_state** %4, align 8
  %59 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %60 = icmp ne %struct.xfrm_state* %59, null
  br i1 %60, label %61, label %83

61:                                               ; preds = %51
  %62 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %63 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %67 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %81, label %71

71:                                               ; preds = %61
  %72 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %73 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %6, align 4
  %79 = call i64 @xfrm_addr_cmp(i32* %74, i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %71, %61
  %82 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  store %struct.xfrm_state* %82, %struct.xfrm_state** %5, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %4, align 8
  br label %83

83:                                               ; preds = %81, %71, %51
  br label %84

84:                                               ; preds = %83, %45, %42
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %89 = icmp ne %struct.xfrm_state* %88, null
  br i1 %89, label %114, label %90

90:                                               ; preds = %87
  %91 = load %struct.net*, %struct.net** %3, align 8
  %92 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %93 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %92, i32 0, i32 2
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %100 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %104 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %108 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  %110 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %111 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = call %struct.xfrm_state* @__find_acq_core(%struct.net* %91, %struct.TYPE_8__* %93, i32 %94, i32 %98, i32 %102, i64 %106, i32* %109, i32* %112, i32 0)
  store %struct.xfrm_state* %113, %struct.xfrm_state** %4, align 8
  br label %114

114:                                              ; preds = %90, %87, %84
  %115 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %116 = call i32 @__xfrm_state_bump_genids(%struct.xfrm_state* %115)
  %117 = load %struct.xfrm_state*, %struct.xfrm_state** %2, align 8
  %118 = call i32 @__xfrm_state_insert(%struct.xfrm_state* %117)
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %114, %38
  %120 = call i32 @spin_unlock_bh(i32* @xfrm_state_lock)
  %121 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %122 = icmp ne %struct.xfrm_state* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %125 = call i32 @xfrm_state_delete(%struct.xfrm_state* %124)
  %126 = load %struct.xfrm_state*, %struct.xfrm_state** %4, align 8
  %127 = call i32 @xfrm_state_put(%struct.xfrm_state* %126)
  br label %128

128:                                              ; preds = %123, %119
  %129 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %130 = icmp ne %struct.xfrm_state* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.xfrm_state*, %struct.xfrm_state** %5, align 8
  %133 = call i32 @xfrm_state_put(%struct.xfrm_state* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local %struct.net* @xs_net(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_id_proto_match(i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.xfrm_state* @__xfrm_state_locate(%struct.xfrm_state*, i32, i32) #1

declare dso_local %struct.xfrm_state* @__xfrm_find_acq_byseq(%struct.net*, i32, i64) #1

declare dso_local i64 @xfrm_addr_cmp(i32*, i32*, i32) #1

declare dso_local %struct.xfrm_state* @__find_acq_core(%struct.net*, %struct.TYPE_8__*, i32, i32, i32, i64, i32*, i32*, i32) #1

declare dso_local i32 @__xfrm_state_bump_genids(%struct.xfrm_state*) #1

declare dso_local i32 @__xfrm_state_insert(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @xfrm_state_delete(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
