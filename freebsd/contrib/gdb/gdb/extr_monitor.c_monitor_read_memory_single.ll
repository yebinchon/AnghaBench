; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_read_memory_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_read_memory_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"MON read single\0A\00", align 1
@current_monitor = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"EXP getmem.resp_delim\0A\00", align 1
@getmem_resp_delim_pattern = common dso_local global i32 0, align 4
@MO_HEX_PREFIX = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"monitor_read_memory_single\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"bad response from monitor\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"bad value from monitor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @monitor_read_memory_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_read_memory_single(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [9 x i8], align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = call i32 @monitor_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp sge i32 %19, 4
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  store i32 4, i32* %6, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  br label %56

32:                                               ; preds = %21, %18, %3
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %50

39:                                               ; preds = %36
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  store i32 2, i32* %6, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %10, align 8
  br label %55

50:                                               ; preds = %39, %36, %32
  store i32 1, i32* %6, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %10, align 8
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %27
  %57 = load i8*, i8** %10, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, ...) @monitor_printf(i8* %57, i32 %58)
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = call i32 @monitor_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %67 = call i32 @monitor_expect_regexp(i32* @getmem_resp_delim_pattern, i32* null, i32 0)
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MO_HEX_PREFIX, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %68
  %76 = load i32, i32* @timeout, align 4
  %77 = call i32 @readchar(i32 %76)
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %81, %75
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @timeout, align 4
  %83 = call i32 @readchar(i32 %82)
  store i32 %83, i32* %11, align 4
  br label %78

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 48
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @timeout, align 4
  %89 = call i32 @readchar(i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = icmp eq i32 %89, 120
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %95

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @monitor_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 0, i8* null, i32 0)
  br label %95

95:                                               ; preds = %92, %91
  br label %96

96:                                               ; preds = %95, %68
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %125, %96
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %6, align 4
  %100 = mul nsw i32 %99, 2
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %102, %113, %114
  %104 = load i32, i32* @timeout, align 4
  %105 = call i32 @readchar(i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i64 @isxdigit(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  br label %119

110:                                              ; preds = %103
  %111 = load i32, i32* %13, align 4
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %103

114:                                              ; preds = %110
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %12, align 4
  %117 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %118 = call i32 @monitor_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %116, i8* %117, i32 0)
  br label %103

119:                                              ; preds = %109
  %120 = load i32, i32* %13, align 4
  %121 = trunc i32 %120 to i8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 %123
  store i8 %121, i8* %124, align 1
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  br label %97

128:                                              ; preds = %97
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 %130
  store i8 0, i8* %131, align 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %128
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @monitor_expect(i64 %141, i32* null, i32 0)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %137
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 (i8*, ...) @monitor_printf(i8* %154)
  %156 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %157

157:                                              ; preds = %148, %137
  br label %160

158:                                              ; preds = %128
  %159 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %160

160:                                              ; preds = %158, %157
  %161 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  store i8* %161, i8** %9, align 8
  %162 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %163 = call i32 @strtoul(i8* %162, i8** %9, i32 16)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %168 = load i8*, i8** %9, align 8
  %169 = icmp eq i8* %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i32, i32* %4, align 4
  %172 = getelementptr inbounds [9 x i8], [9 x i8]* %8, i64 0, i64 0
  %173 = call i32 @monitor_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %171, i32 0, i8* %172, i32 0)
  br label %174

174:                                              ; preds = %170, %166, %160
  %175 = load i8*, i8** %5, align 8
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @store_unsigned_integer(i8* %175, i32 %176, i32 %177)
  %179 = load i32, i32* %6, align 4
  ret i32 %179
}

declare dso_local i32 @monitor_debug(i8*) #1

declare dso_local i32 @monitor_printf(i8*, ...) #1

declare dso_local i32 @monitor_expect_regexp(i32*, i32*, i32) #1

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @monitor_error(i8*, i8*, i32, i32, i8*, i32) #1

declare dso_local i64 @isxdigit(i32) #1

declare dso_local i32 @monitor_expect(i64, i32*, i32) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
