; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_input.c_xfrm6_input_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_xfrm6_input.c_xfrm6_input_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.sec_path*, i32, i32 }
%struct.sec_path = type { i64, %struct.xfrm_state**, i32 }
%struct.xfrm_state = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 (%struct.xfrm_state*, %struct.sk_buff*)* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.net = type { i32 }

@LINUX_MIB_XFRMINERROR = common dso_local global i32 0, align 4
@XFRM_MAX_DEPTH = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINBUFFERERROR = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@XFRM_STATE_WILDRECV = common dso_local global i32 0, align 4
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@LINUX_MIB_XFRMINNOSTATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfrm6_input_addr(%struct.sk_buff* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.xfrm_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sec_path*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net* @dev_net(i32 %18)
  store %struct.net* %19, %struct.net** %10, align 8
  store %struct.xfrm_state* null, %struct.xfrm_state** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load %struct.sec_path*, %struct.sec_path** %21, align 8
  %23 = icmp ne %struct.sec_path* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 1
  %27 = load %struct.sec_path*, %struct.sec_path** %26, align 8
  %28 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %27, i32 0, i32 2
  %29 = call i32 @atomic_read(i32* %28)
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %56

31:                                               ; preds = %24, %4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load %struct.sec_path*, %struct.sec_path** %33, align 8
  %35 = call %struct.sec_path* @secpath_dup(%struct.sec_path* %34)
  store %struct.sec_path* %35, %struct.sec_path** %13, align 8
  %36 = load %struct.sec_path*, %struct.sec_path** %13, align 8
  %37 = icmp ne %struct.sec_path* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.net*, %struct.net** %10, align 8
  %40 = load i32, i32* @LINUX_MIB_XFRMINERROR, align 4
  %41 = call i32 @XFRM_INC_STATS(%struct.net* %39, i32 %40)
  br label %192

42:                                               ; preds = %31
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load %struct.sec_path*, %struct.sec_path** %44, align 8
  %46 = icmp ne %struct.sec_path* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load %struct.sec_path*, %struct.sec_path** %49, align 8
  %51 = call i32 @secpath_put(%struct.sec_path* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load %struct.sec_path*, %struct.sec_path** %13, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  store %struct.sec_path* %53, %struct.sec_path** %55, align 8
  br label %56

56:                                               ; preds = %52, %24
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load %struct.sec_path*, %struct.sec_path** %58, align 8
  %60 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 1, %61
  %63 = load i64, i64* @XFRM_MAX_DEPTH, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load %struct.net*, %struct.net** %10, align 8
  %67 = load i32, i32* @LINUX_MIB_XFRMINBUFFERERROR, align 4
  %68 = call i32 @XFRM_INC_STATS(%struct.net* %66, i32 %67)
  br label %192

69:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %70

70:                                               ; preds = %144, %69
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 3
  br i1 %72, label %73, label %147

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  switch i32 %74, label %80 [
    i32 0, label %75
    i32 1, label %78
  ]

75:                                               ; preds = %73
  %76 = load i32*, i32** %7, align 8
  store i32* %76, i32** %14, align 8
  %77 = load i32*, i32** %8, align 8
  store i32* %77, i32** %15, align 8
  br label %81

78:                                               ; preds = %73
  %79 = load i32*, i32** %7, align 8
  store i32* %79, i32** %14, align 8
  store i32* @in6addr_any, i32** %15, align 8
  br label %81

80:                                               ; preds = %73
  store i32* @in6addr_any, i32** %14, align 8
  store i32* @in6addr_any, i32** %15, align 8
  br label %81

81:                                               ; preds = %80, %78, %75
  %82 = load %struct.net*, %struct.net** %10, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %14, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @AF_INET6, align 4
  %90 = call %struct.xfrm_state* @xfrm_state_lookup_byaddr(%struct.net* %82, i32 %85, i32* %86, i32* %87, i32 %88, i32 %89)
  store %struct.xfrm_state* %90, %struct.xfrm_state** %11, align 8
  %91 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %92 = icmp ne %struct.xfrm_state* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %81
  br label %144

94:                                               ; preds = %81
  %95 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %96 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %95, i32 0, i32 0
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %102 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @XFRM_STATE_WILDRECV, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %100, %94
  %109 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %110 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @XFRM_STATE_VALID, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i64 @likely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %137

118:                                              ; preds = %108
  %119 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %120 = call i32 @xfrm_state_check_expire(%struct.xfrm_state* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %137, label %122

122:                                              ; preds = %118
  %123 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %124 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %123, i32 0, i32 0
  %125 = call i32 @spin_unlock(i32* %124)
  %126 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %127 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %126, i32 0, i32 2
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i64 (%struct.xfrm_state*, %struct.sk_buff*)*, i64 (%struct.xfrm_state*, %struct.sk_buff*)** %129, align 8
  %131 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %133 = call i64 %130(%struct.xfrm_state* %131, %struct.sk_buff* %132)
  %134 = icmp sgt i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %147

136:                                              ; preds = %122
  br label %141

137:                                              ; preds = %118, %108, %100
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %139 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  br label %141

141:                                              ; preds = %137, %136
  %142 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %143 = call i32 @xfrm_state_put(%struct.xfrm_state* %142)
  store %struct.xfrm_state* null, %struct.xfrm_state** %11, align 8
  br label %144

144:                                              ; preds = %141, %93
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %70

147:                                              ; preds = %135, %70
  %148 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %149 = icmp ne %struct.xfrm_state* %148, null
  br i1 %149, label %157, label %150

150:                                              ; preds = %147
  %151 = load %struct.net*, %struct.net** %10, align 8
  %152 = load i32, i32* @LINUX_MIB_XFRMINNOSTATES, align 4
  %153 = call i32 @XFRM_INC_STATS(%struct.net* %151, i32 %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = load i32, i32* @AF_INET6, align 4
  %156 = call i32 @xfrm_audit_state_notfound_simple(%struct.sk_buff* %154, i32 %155)
  br label %192

157:                                              ; preds = %147
  %158 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 1
  %161 = load %struct.sec_path*, %struct.sec_path** %160, align 8
  %162 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %161, i32 0, i32 1
  %163 = load %struct.xfrm_state**, %struct.xfrm_state*** %162, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 1
  %166 = load %struct.sec_path*, %struct.sec_path** %165, align 8
  %167 = getelementptr inbounds %struct.sec_path, %struct.sec_path* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %163, i64 %168
  store %struct.xfrm_state* %158, %struct.xfrm_state** %170, align 8
  %171 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %172 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %171, i32 0, i32 0
  %173 = call i32 @spin_lock(i32* %172)
  %174 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %178 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %181, %176
  %183 = trunc i64 %182 to i32
  store i32 %183, i32* %179, align 4
  %184 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %185 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.xfrm_state*, %struct.xfrm_state** %11, align 8
  %190 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %189, i32 0, i32 0
  %191 = call i32 @spin_unlock(i32* %190)
  store i32 1, i32* %5, align 4
  br label %193

192:                                              ; preds = %150, %65, %38
  store i32 -1, i32* %5, align 4
  br label %193

193:                                              ; preds = %192, %157
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.sec_path* @secpath_dup(%struct.sec_path*) #1

declare dso_local i32 @XFRM_INC_STATS(%struct.net*, i32) #1

declare dso_local i32 @secpath_put(%struct.sec_path*) #1

declare dso_local %struct.xfrm_state* @xfrm_state_lookup_byaddr(%struct.net*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xfrm_state_check_expire(%struct.xfrm_state*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

declare dso_local i32 @xfrm_audit_state_notfound_simple(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
