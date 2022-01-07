; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_fetch_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_fetch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8* (i32)*, i8**, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@MAX_REGISTER_SIZE = common dso_local global i32 0, align 4
@current_monitor = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"MON fetchreg %d '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"(null name)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"No register known for %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"EXP getreg.resp_delim\0A\00", align 1
@MO_32_REGS_PAIRED = common dso_local global i32 0, align 4
@MO_HEX_PREFIX = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"Bad value returned from monitor while fetching register %x.\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"REGVAL '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"EXP getreg.term\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"EMIT getreg.term.cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @monitor_fetch_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_fetch_register(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %10 = mul nsw i32 %9, 2
  %11 = add nsw i32 %10, 1
  %12 = call i8* @alloca(i32 %11)
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %14 = call i8* @alloca(i32 %13)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* @MAX_REGISTER_SIZE, align 4
  %17 = call i32 @memset(i8* %15, i32 0, i32 %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i8* (i32)*, i8* (i32)** %19, align 8
  %21 = icmp ne i8* (i32)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8* (i32)*, i8* (i32)** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call i8* %25(i32 %26)
  store i8* %27, i8** %3, align 8
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %2, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %3, align 8
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %2, align 4
  %38 = load i8*, i8** %3, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  br label %43

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i8* [ %41, %40 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %42 ]
  %45 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %44)
  %46 = load i8*, i8** %3, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %2, align 4
  %55 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @supply_register(i32 %56, i8* %57)
  br label %209

59:                                               ; preds = %48
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 (i64, ...) @monitor_printf(i64 %64, i8* %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %59
  %73 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @monitor_expect(i64 %77, i32* null, i32 0)
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MO_32_REGS_PAIRED, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %72
  %86 = load i32, i32* %2, align 4
  %87 = and i32 %86, 1
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i32, i32* %2, align 4
  %91 = icmp slt i32 %90, 32
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @monitor_expect(i64 %97, i32* null, i32 0)
  br label %99

99:                                               ; preds = %92, %89, %85, %72
  br label %100

100:                                              ; preds = %99, %59
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MO_HEX_PREFIX, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %100
  %108 = load i32, i32* @timeout, align 4
  %109 = call i32 @readchar(i32 %108)
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %113, %107
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @timeout, align 4
  %115 = call i32 @readchar(i32 %114)
  store i32 %115, i32* %7, align 4
  br label %110

116:                                              ; preds = %110
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 48
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* @timeout, align 4
  %121 = call i32 @readchar(i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = icmp eq i32 %121, 120
  br i1 %122, label %123, label %124

123:                                              ; preds = %119
  br label %127

124:                                              ; preds = %119, %116
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %124, %123
  br label %128

128:                                              ; preds = %127, %100
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %156, %128
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %2, align 4
  %132 = call i32 @DEPRECATED_REGISTER_RAW_SIZE(i32 %131)
  %133 = mul nsw i32 %132, 2
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %129
  %136 = load i32, i32* @timeout, align 4
  %137 = call i32 @readchar(i32 %136)
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %141, %135
  %139 = load i32, i32* %8, align 4
  %140 = icmp eq i32 %139, 32
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* @timeout, align 4
  %143 = call i32 @readchar(i32 %142)
  store i32 %143, i32* %8, align 4
  br label %138

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @isxdigit(i32 %145) #3
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %144
  br label %159

149:                                              ; preds = %144
  %150 = load i32, i32* %8, align 4
  %151 = trunc i32 %150 to i8
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  store i8 %151, i8* %155, align 1
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  br label %129

159:                                              ; preds = %148, %129
  %160 = load i8*, i8** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  store i8 0, i8* %163, align 1
  %164 = load i8*, i8** %5, align 8
  %165 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %164)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %159
  %172 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @monitor_expect(i64 %176, i32* null, i32 0)
  br label %178

178:                                              ; preds = %171, %159
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %178
  %185 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 (i64, ...) @monitor_printf(i64 %189)
  br label %191

191:                                              ; preds = %184, %178
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %191
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %197, %191
  %204 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %205

205:                                              ; preds = %203, %197
  %206 = load i32, i32* %2, align 4
  %207 = load i8*, i8** %5, align 8
  %208 = call i32 @monitor_supply_register(i32 %206, i8* %207)
  br label %209

209:                                              ; preds = %205, %53
  ret void
}

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @monitor_debug(i8*, ...) #1

declare dso_local i32 @supply_register(i32, i8*) #1

declare dso_local i32 @monitor_printf(i64, ...) #1

declare dso_local i32 @monitor_expect(i64, i32*, i32) #1

declare dso_local i32 @readchar(i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @DEPRECATED_REGISTER_RAW_SIZE(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isxdigit(i32) #2

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

declare dso_local i32 @monitor_supply_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
