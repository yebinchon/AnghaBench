; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_write_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_write_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"MON write %d %s\0A\00", align 1
@current_monitor = common dso_local global %struct.TYPE_4__* null, align 8
@MO_ADDR_BITS_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"MON FILL %d\0A\00", align 1
@MO_FILL_USES_ADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Hostval(%08x) val(%08x)\0A\00", align 1
@MO_NO_ECHO_ON_SETMEM = common dso_local global i32 0, align 4
@MO_SETMEM_INTERACTIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"EXP setmem.resp_delim\00", align 1
@setmem_resp_delim_pattern = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%x\0D\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"EXP setmem.term\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @monitor_write_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_write_memory(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @paddr(i32 %13)
  %15 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MO_ADDR_BITS_REMOVE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ADDR_BITS_REMOVE(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %25
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %48

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %31

48:                                               ; preds = %43, %31
  %49 = load i32, i32* %11, align 4
  %50 = icmp sgt i32 %49, 4
  br i1 %50, label %51, label %82

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @MO_FILL_USES_ADDR, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %51
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  %69 = sub nsw i32 %68, 1
  %70 = call i32 (i8*, i32, ...) @monitor_printf(i8* %64, i32 %65, i32 %69, i32 0)
  br label %79

71:                                               ; preds = %51
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 (i8*, i32, ...) @monitor_printf(i8* %75, i32 %76, i32 %77, i32 0)
  br label %79

79:                                               ; preds = %71, %60
  %80 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %4, align 4
  br label %208

82:                                               ; preds = %48
  br label %83

83:                                               ; preds = %82, %25
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %84, 3
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  %89 = icmp sge i32 %88, 4
  br i1 %89, label %90, label %101

90:                                               ; preds = %87
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i8*, i8** %93, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %90
  store i32 4, i32* %7, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %10, align 8
  br label %125

101:                                              ; preds = %90, %87, %83
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %119

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %106, 2
  br i1 %107, label %108, label %119

108:                                              ; preds = %105
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  store i32 2, i32* %7, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i8*, i8** %117, align 8
  store i8* %118, i8** %10, align 8
  br label %124

119:                                              ; preds = %108, %105, %101
  store i32 1, i32* %7, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %10, align 8
  br label %124

124:                                              ; preds = %119, %114
  br label %125

125:                                              ; preds = %124, %96
  %126 = load i8*, i8** %6, align 8
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @extract_unsigned_integer(i8* %126, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %129, 4
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load i8*, i8** %6, align 8
  %133 = bitcast i8* %132 to i32*
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %131, %125
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @MO_NO_ECHO_ON_SETMEM, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %138
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (i8*, i32, ...) @monitor_printf_noecho(i8* %146, i32 %147, i32 %148)
  br label %205

150:                                              ; preds = %138
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MO_SETMEM_INTERACTIVE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %199

157:                                              ; preds = %150
  %158 = load i8*, i8** %10, align 8
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i8*, i32, ...) @monitor_printf_noecho(i8* %158, i32 %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %157
  %167 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %168 = call i32 @monitor_expect_regexp(i32* @setmem_resp_delim_pattern, i32* null, i32 0)
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i8*, i32, ...) @monitor_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  br label %171

171:                                              ; preds = %166, %157
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 5
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %186

177:                                              ; preds = %171
  %178 = call i32 (i8*, ...) @monitor_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 5
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @monitor_expect(i64 %182, i32* null, i32 0)
  %184 = load i32, i32* %8, align 4
  %185 = call i32 (i8*, i32, ...) @monitor_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %177, %171
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %186
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current_monitor, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = call i32 (i8*, i32, ...) @monitor_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %192, %186
  br label %204

199:                                              ; preds = %150
  %200 = load i8*, i8** %10, align 8
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* %8, align 4
  %203 = call i32 (i8*, i32, ...) @monitor_printf(i8* %200, i32 %201, i32 %202)
  br label %204

204:                                              ; preds = %199, %198
  br label %205

205:                                              ; preds = %204, %145
  %206 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  %207 = load i32, i32* %7, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %205, %79
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @monitor_debug(i8*, ...) #1

declare dso_local i32 @paddr(i32) #1

declare dso_local i32 @ADDR_BITS_REMOVE(i32) #1

declare dso_local i32 @monitor_printf(i8*, i32, ...) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

declare dso_local i32 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i32 @monitor_printf_noecho(i8*, i32, ...) #1

declare dso_local i32 @monitor_expect_regexp(i32*, i32*, i32) #1

declare dso_local i32 @monitor_expect(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
