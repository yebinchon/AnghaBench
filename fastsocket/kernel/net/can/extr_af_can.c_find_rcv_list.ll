; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_af_can.c_find_rcv_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_af_can.c_find_rcv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hlist_head = type { i32 }
%struct.dev_rcv_lists = type { %struct.hlist_head*, %struct.hlist_head* }

@CAN_INV_FILTER = common dso_local global i32 0, align 4
@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@CAN_ERR_MASK = common dso_local global i32 0, align 4
@RX_ERR = common dso_local global i64 0, align 8
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@RX_INV = common dso_local global i64 0, align 8
@RX_ALL = common dso_local global i64 0, align 8
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@RX_EFF = common dso_local global i64 0, align 8
@RX_FIL = common dso_local global i64 0, align 8
@CAN_EFF_RTR_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hlist_head* (i32*, i32*, %struct.dev_rcv_lists*)* @find_rcv_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hlist_head* @find_rcv_list(i32* %0, i32* %1, %struct.dev_rcv_lists* %2) #0 {
  %4 = alloca %struct.hlist_head*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dev_rcv_lists*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.dev_rcv_lists* %2, %struct.dev_rcv_lists** %7, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @CAN_INV_FILTER, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CAN_ERR_FLAG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i32, i32* @CAN_ERR_MASK, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %7, align 8
  %24 = getelementptr inbounds %struct.dev_rcv_lists, %struct.dev_rcv_lists* %23, i32 0, i32 0
  %25 = load %struct.hlist_head*, %struct.hlist_head** %24, align 8
  %26 = load i64, i64* @RX_ERR, align 8
  %27 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %25, i64 %26
  store %struct.hlist_head* %27, %struct.hlist_head** %4, align 8
  br label %137

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CAN_EFF_FLAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %28
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CAN_EFF_FLAG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @CAN_SFF_MASK, align 4
  %42 = load i32, i32* @CAN_EFF_FLAG, align 4
  %43 = load i32, i32* @CAN_RTR_FLAG, align 4
  %44 = or i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %45
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %40, %34, %28
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %7, align 8
  %59 = getelementptr inbounds %struct.dev_rcv_lists, %struct.dev_rcv_lists* %58, i32 0, i32 0
  %60 = load %struct.hlist_head*, %struct.hlist_head** %59, align 8
  %61 = load i64, i64* @RX_INV, align 8
  %62 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %60, i64 %61
  store %struct.hlist_head* %62, %struct.hlist_head** %4, align 8
  br label %137

63:                                               ; preds = %49
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %63
  %68 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %7, align 8
  %69 = getelementptr inbounds %struct.dev_rcv_lists, %struct.dev_rcv_lists* %68, i32 0, i32 0
  %70 = load %struct.hlist_head*, %struct.hlist_head** %69, align 8
  %71 = load i64, i64* @RX_ALL, align 8
  %72 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %70, i64 %71
  store %struct.hlist_head* %72, %struct.hlist_head** %4, align 8
  br label %137

73:                                               ; preds = %63
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @CAN_EFF_FLAG, align 4
  %77 = load i32, i32* @CAN_RTR_FLAG, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load i32, i32* @CAN_EFF_FLAG, align 4
  %81 = load i32, i32* @CAN_RTR_FLAG, align 4
  %82 = or i32 %80, %81
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %131

84:                                               ; preds = %73
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CAN_RTR_FLAG, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %131, label %90

90:                                               ; preds = %84
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @CAN_EFF_FLAG, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %90
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CAN_EFF_MASK, align 4
  %100 = load i32, i32* @CAN_EFF_FLAG, align 4
  %101 = load i32, i32* @CAN_RTR_FLAG, align 4
  %102 = or i32 %100, %101
  %103 = or i32 %99, %102
  %104 = icmp eq i32 %98, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %7, align 8
  %107 = getelementptr inbounds %struct.dev_rcv_lists, %struct.dev_rcv_lists* %106, i32 0, i32 0
  %108 = load %struct.hlist_head*, %struct.hlist_head** %107, align 8
  %109 = load i64, i64* @RX_EFF, align 8
  %110 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %108, i64 %109
  store %struct.hlist_head* %110, %struct.hlist_head** %4, align 8
  br label %137

111:                                              ; preds = %96
  br label %130

112:                                              ; preds = %90
  %113 = load i32*, i32** %6, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CAN_SFF_MASK, align 4
  %116 = load i32, i32* @CAN_EFF_FLAG, align 4
  %117 = load i32, i32* @CAN_RTR_FLAG, align 4
  %118 = or i32 %116, %117
  %119 = or i32 %115, %118
  %120 = icmp eq i32 %114, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %112
  %122 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %7, align 8
  %123 = getelementptr inbounds %struct.dev_rcv_lists, %struct.dev_rcv_lists* %122, i32 0, i32 1
  %124 = load %struct.hlist_head*, %struct.hlist_head** %123, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %124, i64 %127
  store %struct.hlist_head* %128, %struct.hlist_head** %4, align 8
  br label %137

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %111
  br label %131

131:                                              ; preds = %130, %84, %73
  %132 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %7, align 8
  %133 = getelementptr inbounds %struct.dev_rcv_lists, %struct.dev_rcv_lists* %132, i32 0, i32 0
  %134 = load %struct.hlist_head*, %struct.hlist_head** %133, align 8
  %135 = load i64, i64* @RX_FIL, align 8
  %136 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %134, i64 %135
  store %struct.hlist_head* %136, %struct.hlist_head** %4, align 8
  br label %137

137:                                              ; preds = %131, %121, %105, %67, %57, %18
  %138 = load %struct.hlist_head*, %struct.hlist_head** %4, align 8
  ret %struct.hlist_head* %138
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
