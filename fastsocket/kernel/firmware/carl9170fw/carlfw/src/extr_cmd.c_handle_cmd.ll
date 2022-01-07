; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_cmd.c_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_cmd.c_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { %struct.carl9170_cmd }
%struct.carl9170_cmd = type { %struct.TYPE_28__, %struct.TYPE_27__, i32, i32, %struct.TYPE_23__, i32, %struct.TYPE_21__, %struct.TYPE_39__, %struct.TYPE_37__, %struct.TYPE_35__ }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_23__ = type { i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_39__ = type { i32* }
%struct.TYPE_37__ = type { %struct.TYPE_36__* }
%struct.TYPE_36__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32* }
%struct.TYPE_30__ = type { i32, %struct.TYPE_26__, %struct.TYPE_22__, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32*, i32, i32 }
%struct.carl9170_rsp = type { %struct.TYPE_24__, %struct.TYPE_29__, %struct.TYPE_40__, %struct.TYPE_38__, %struct.TYPE_34__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_40__ = type { i64 }
%struct.TYPE_38__ = type { %struct.TYPE_29__* }
%struct.TYPE_34__ = type { i32* }

@dma_mem = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@CARL9170_CMD_ASYNC_FLAG = common dso_local global i32 0, align 4
@fw = common dso_local global %struct.TYPE_30__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unknown command %x\0A\00", align 1
@AR9170_BCN_CTRL_READY = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BCN_ADDR = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BCN_CTRL = common dso_local global i32 0, align 4
@AR9170_MAC_REG_BCN_LENGTH = common dso_local global i32 0, align 4
@CARL9170_BCN_CTRL_CAB_TRIGGER = common dso_local global i32 0, align 4
@CARL9170_CAB_TRIGGER_EMPTY = common dso_local global i32 0, align 4
@CARL9170_MAC_RESET_FORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_cmd(%struct.carl9170_rsp* %0) #0 {
  %2 = alloca %struct.carl9170_rsp*, align 8
  %3 = alloca %struct.carl9170_cmd*, align 8
  %4 = alloca i32, align 4
  store %struct.carl9170_rsp* %0, %struct.carl9170_rsp** %2, align 8
  store %struct.carl9170_cmd* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @dma_mem, i32 0, i32 0, i32 0, i32 0), %struct.carl9170_cmd** %3, align 8
  %5 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %6 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %10 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 8
  %12 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %13 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %17 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %20 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %24 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 4
  %26 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %31 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %36 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CARL9170_CMD_ASYNC_FLAG, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  switch i32 %41, label %158 [
    i32 133, label %42
    i32 128, label %72
    i32 141, label %108
    i32 131, label %122
    i32 135, label %123
    i32 136, label %124
    i32 132, label %134
    i32 129, label %142
    i32 130, label %146
  ]

42:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %68, %42
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 4
  %50 = icmp ult i32 %44, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  %52 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %53 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @get(i32 %59)
  %61 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %62 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %60, i32* %67, align 4
  br label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %4, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %43

71:                                               ; preds = %43
  br label %164

72:                                               ; preds = %1
  %73 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %74 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %104, %72
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %79 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sdiv i32 %81, 8
  %83 = icmp ult i32 %77, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %76
  %85 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %86 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_36__*, %struct.TYPE_36__** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %95 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_36__*, %struct.TYPE_36__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @set(i32 %93, i32 %102)
  br label %104

104:                                              ; preds = %84
  %105 = load i32, i32* %4, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %76

107:                                              ; preds = %76
  br label %164

108:                                              ; preds = %1
  %109 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %110 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %111, align 8
  %113 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %114 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %118 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @memcpy(%struct.TYPE_29__* %112, i32* %116, i32 %120)
  br label %164

122:                                              ; preds = %1
  br label %164

123:                                              ; preds = %1
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @fw, i32 0, i32 0), align 8
  br label %164

124:                                              ; preds = %1
  %125 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %126 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %126, i32 0, i32 0
  store i32 8, i32* %127, align 8
  %128 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %129 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i32*
  %133 = call i32 @read_tsf(i32* %132)
  br label %164

134:                                              ; preds = %1
  %135 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %136 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %139 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %138, i32 0, i32 6
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @fw, i32 0, i32 2, i32 1), align 8
  br label %164

142:                                              ; preds = %1
  %143 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %144 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %143, i32 0, i32 5
  %145 = call i32 @wol_cmd(i32* %144)
  br label %164

146:                                              ; preds = %1
  %147 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %148 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 0
  store i32 4, i32* %149, align 8
  %150 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %151 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %150, i32 0, i32 1
  %152 = call i32 @memcpy(%struct.TYPE_29__* %151, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @fw, i32 0, i32 3), i32 4)
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @fw, i32 0, i32 4), align 4
  %154 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %2, align 8
  %155 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 8
  %157 = call i32 @memset(i32* getelementptr inbounds (%struct.TYPE_30__, %struct.TYPE_30__* @fw, i32 0, i32 3), i32 0, i32 4)
  br label %164

158:                                              ; preds = %1
  %159 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %3, align 8
  %160 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @BUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %158, %146, %142, %134, %124, %123, %122, %108, %107, %71
  ret void
}

declare dso_local i32 @get(i32) #1

declare dso_local i32 @set(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local i32 @read_tsf(i32*) #1

declare dso_local i32 @wol_cmd(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @BUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
