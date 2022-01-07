; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_store_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_store_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* (i32)*, i8**, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i64, i64 }

@current_monitor = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"MON Cannot store unknown register\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"MON storeg %d %s\0A\00", align 1
@MO_REGISTER_VALUE_FIRST = common dso_local global i32 0, align 4
@MO_SETREG_INTERACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"EXP setreg.resp_delim\0A\00", align 1
@setreg_resp_delim_pattern = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0D\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"EXP setreg.term\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"EXP setreg_termcmd\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @monitor_store_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_store_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i8* (i32)*, i8* (i32)** %6, align 8
  %8 = icmp ne i8* (i32)* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i8* (i32)*, i8* (i32)** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i8* %12(i32 %13)
  store i8* %14, i8** %3, align 8
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i8**, i8*** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %3, align 8
  br label %23

23:                                               ; preds = %15, %9
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %23
  %32 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %142

33:                                               ; preds = %26
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @read_register(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %38)
  %40 = call i32 @phex(i32 %37, i32 %39)
  %41 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MO_REGISTER_VALUE_FIRST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %33
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 (i8*, i8*, ...) @monitor_printf(i8* %52, i8* %55, i8* %56)
  br label %81

58:                                               ; preds = %33
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MO_SETREG_INTERACTIVE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 (i8*, i8*, ...) @monitor_printf(i8* %69, i8* %70)
  br label %80

72:                                               ; preds = %58
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i8*, i8*, ...) @monitor_printf(i8* %76, i8* %77, i32 %78)
  br label %80

80:                                               ; preds = %72, %65
  br label %81

81:                                               ; preds = %80, %48
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %89 = call i32 @monitor_expect_regexp(i32* @setreg_resp_delim_pattern, i32* null, i32 0)
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MO_SETREG_INTERACTIVE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %87
  %97 = load i32, i32* %4, align 4
  %98 = call i8* @paddr_nz(i32 %97)
  %99 = call i32 (i8*, i8*, ...) @monitor_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %96, %87
  br label %101

101:                                              ; preds = %100, %81
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %101
  %108 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @monitor_expect(i64 %112, i32* null, i32 0)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MO_SETREG_INTERACTIVE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %107
  %121 = load i32, i32* %4, align 4
  %122 = call i8* @paddr_nz(i32 %121)
  %123 = call i32 (i8*, i8*, ...) @monitor_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %120, %107
  %125 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %128

126:                                              ; preds = %101
  %127 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %128

128:                                              ; preds = %126, %124
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %128
  %135 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 (i8*, i8*, ...) @monitor_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %139)
  %141 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %142

142:                                              ; preds = %31, %134, %128
  ret void
}

declare dso_local i32 @monitor_debug(i8*, ...) #1

declare dso_local i32 @read_register(i32) #1

declare dso_local i32 @phex(i32, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

declare dso_local i32 @monitor_printf(i8*, i8*, ...) #1

declare dso_local i32 @monitor_expect_regexp(i32*, i32*, i32) #1

declare dso_local i8* @paddr_nz(i32) #1

declare dso_local i32 @monitor_expect(i64, i32*, i32) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
