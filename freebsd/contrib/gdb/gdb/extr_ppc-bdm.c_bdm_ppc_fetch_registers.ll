; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-bdm.c_bdm_ppc_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ppc-bdm.c_bdm_ppc_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@FPLAST_REGNUM = common dso_local global i32 0, align 4
@FP0_REGNUM = common dso_local global i32 0, align 4
@NUM_REGS = common dso_local global i32 0, align 4
@BDM_NUM_REGS = common dso_local global i32 0, align 4
@bdm_regmap = common dso_local global i32* null, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bdm_ppc_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bdm_ppc_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [32 x i8], align 16
  %9 = alloca [1 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %30, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @FPLAST_REGNUM, align 4
  %22 = load i32, i32* @FP0_REGNUM, align 4
  %23 = sub nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 %28
  store i8 -1, i8* %29, align 1
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %19

33:                                               ; preds = %19
  %34 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  store i8 -1, i8* %34, align 1
  %35 = load i32, i32* %2, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  %38 = load i32, i32* @NUM_REGS, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %40 = load i32, i32* @BDM_NUM_REGS, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %13, align 4
  br label %55

42:                                               ; preds = %33
  %43 = load i32, i32* %2, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %2, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32*, i32** @bdm_regmap, align 8
  %46 = load i32, i32* %2, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32*, i32** @bdm_regmap, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %42, %37
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @supply_register(i32 %59, i8* null)
  br label %156

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @current_gdbarch, align 4
  %68 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %87, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @current_gdbarch, align 4
  %75 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %73, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @FP0_REGNUM, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @FPLAST_REGNUM, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83, %72, %65
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @supply_register(i32 %88, i8* null)
  br label %156

90:                                               ; preds = %83, %79
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i8* @ocd_read_bdm_registers(i32 %91, i32 %92, i32* %14)
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %90
  br label %118

95:                                               ; preds = %61
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @FP0_REGNUM, align 4
  %98 = sub nsw i32 %97, 1
  %99 = call i8* @ocd_read_bdm_registers(i32 %96, i32 %98, i32* %15)
  store i8* %99, i8** %5, align 8
  %100 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %101 = load i32, i32* @FPLAST_REGNUM, align 4
  %102 = add nsw i32 %101, 1
  %103 = load i32, i32* %13, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i8* @ocd_read_bdm_registers(i32 %102, i32 %104, i32* %16)
  %106 = call i8* @strcat(i8* %100, i8* %105)
  store i8* %106, i8** %6, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = load i8*, i8** %6, align 8
  %109 = call i8* @strcat(i8* %107, i8* %108)
  store i8* %109, i8** %7, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds [1 x i8], [1 x i8]* %9, i64 0, i64 0
  %112 = call i8* @strcat(i8* %110, i8* %111)
  store i8* %112, i8** %4, align 8
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 32
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %114, %115
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %95, %94
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %153, %118
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %120
  %125 = load i32*, i32** @bdm_regmap, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, -1
  br i1 %131, label %132, label %149

132:                                              ; preds = %124
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %12, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %18, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %14, align 4
  %138 = sdiv i32 %137, 4
  %139 = icmp sge i32 %136, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  br label %153

141:                                              ; preds = %132
  %142 = load i32, i32* %3, align 4
  %143 = load i8*, i8** %4, align 8
  %144 = load i32, i32* %18, align 4
  %145 = mul nsw i32 4, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  %148 = call i32 @supply_register(i32 %142, i8* %147)
  br label %152

149:                                              ; preds = %124
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @supply_register(i32 %150, i8* null)
  br label %152

152:                                              ; preds = %149, %141
  br label %153

153:                                              ; preds = %152, %140
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %3, align 4
  br label %120

156:                                              ; preds = %58, %87, %120
  ret void
}

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(i32) #1

declare dso_local i8* @ocd_read_bdm_registers(i32, i32, i32*) #1

declare dso_local i8* @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
