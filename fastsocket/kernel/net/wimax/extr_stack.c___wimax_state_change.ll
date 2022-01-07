; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_stack.c___wimax_state_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wimax/extr_stack.c___wimax_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wimax_dev = type { i32, i32 }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"(wimax_dev %p new_state %u [old %u])\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"SW BUG: requesting invalid state %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"SW BUG: wimax_dev %p is in unknown state %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"SW BUG: wimax_dev %p entering NULL state from %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"(wimax_dev %p new_state %u [old %u]) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__wimax_state_change(%struct.wimax_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.wimax_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i8*, align 8
  store %struct.wimax_dev* %0, %struct.wimax_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %10 = call %struct.device* @wimax_dev_to_dev(%struct.wimax_dev* %9)
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %12 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @d_fnstart(i32 3, %struct.device* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.wimax_dev* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp uge i32 %19, 130
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %133

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %133

33:                                               ; preds = %28
  store i8* null, i8** %8, align 8
  %34 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.sk_buff* @wimax_gnl_re_state_change_alloc(%struct.wimax_dev* %34, i32 %35, i32 %36, i8** %8)
  store %struct.sk_buff* %37, %struct.sk_buff** %7, align 8
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %84 [
    i32 129, label %39
    i32 135, label %43
    i32 128, label %47
    i32 131, label %51
    i32 134, label %55
    i32 133, label %59
    i32 132, label %63
    i32 136, label %67
    i32 137, label %71
    i32 130, label %83
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @__check_new_state(i32 %40, i32 %41, i32 undef)
  br label %92

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @__check_new_state(i32 %44, i32 %45, i32 undef)
  br label %92

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @__check_new_state(i32 %48, i32 %49, i32 undef)
  br label %92

51:                                               ; preds = %33
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @__check_new_state(i32 %52, i32 %53, i32 undef)
  br label %92

55:                                               ; preds = %33
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @__check_new_state(i32 %56, i32 %57, i32 undef)
  br label %92

59:                                               ; preds = %33
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @__check_new_state(i32 %60, i32 %61, i32 undef)
  br label %92

63:                                               ; preds = %33
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @__check_new_state(i32 %64, i32 %65, i32 undef)
  br label %92

67:                                               ; preds = %33
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @__check_new_state(i32 %68, i32 %69, i32 undef)
  br label %92

71:                                               ; preds = %33
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @__check_new_state(i32 %72, i32 %73, i32 undef)
  %75 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %76 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @netif_tx_disable(i32 %77)
  %79 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %80 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @netif_carrier_off(i32 %81)
  br label %92

83:                                               ; preds = %33
  br label %84

84:                                               ; preds = %33, %83
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %87 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %88 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), %struct.wimax_dev* %86, i32 %89)
  %91 = call i64 @WARN_ON(i32 1)
  br label %133

92:                                               ; preds = %71, %67, %63, %59, %55, %51, %47, %43, %39
  %93 = load i32, i32* %4, align 4
  switch i32 %93, label %119 [
    i32 129, label %94
    i32 135, label %102
    i32 128, label %103
    i32 131, label %104
    i32 134, label %105
    i32 133, label %106
    i32 132, label %107
    i32 136, label %108
    i32 137, label %109
    i32 130, label %118
  ]

94:                                               ; preds = %92
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %97 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %98 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), %struct.wimax_dev* %96, i32 %99)
  %101 = call i64 @WARN_ON(i32 1)
  br label %121

102:                                              ; preds = %92
  br label %121

103:                                              ; preds = %92
  br label %121

104:                                              ; preds = %92
  br label %121

105:                                              ; preds = %92
  br label %121

106:                                              ; preds = %92
  br label %121

107:                                              ; preds = %92
  br label %121

108:                                              ; preds = %92
  br label %121

109:                                              ; preds = %92
  %110 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %111 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @netif_carrier_on(i32 %112)
  %114 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %115 = getelementptr inbounds %struct.wimax_dev, %struct.wimax_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @netif_wake_queue(i32 %116)
  br label %121

118:                                              ; preds = %92
  br label %119

119:                                              ; preds = %92, %118
  %120 = call i32 (...) @BUG()
  br label %121

121:                                              ; preds = %119, %109, %108, %107, %106, %105, %104, %103, %102, %94
  %122 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @__wimax_state_set(%struct.wimax_dev* %122, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %126 = icmp ne %struct.sk_buff* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = call i32 @wimax_gnl_re_state_change_send(%struct.wimax_dev* %128, %struct.sk_buff* %129, i8* %130)
  br label %132

132:                                              ; preds = %127, %121
  br label %133

133:                                              ; preds = %132, %84, %32, %24
  %134 = load %struct.device*, %struct.device** %5, align 8
  %135 = load %struct.wimax_dev*, %struct.wimax_dev** %3, align 8
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @d_fnend(i32 3, %struct.device* %134, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), %struct.wimax_dev* %135, i32 %136, i32 %137)
  ret void
}

declare dso_local %struct.device* @wimax_dev_to_dev(%struct.wimax_dev*) #1

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.wimax_dev*, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.sk_buff* @wimax_gnl_re_state_change_alloc(%struct.wimax_dev*, i32, i32, i8**) #1

declare dso_local i32 @__check_new_state(i32, i32, i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @__wimax_state_set(%struct.wimax_dev*, i32) #1

declare dso_local i32 @wimax_gnl_re_state_change_send(%struct.wimax_dev*, %struct.sk_buff*, i8*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.wimax_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
