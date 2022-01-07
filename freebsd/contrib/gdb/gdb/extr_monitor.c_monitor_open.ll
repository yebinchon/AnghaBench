; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_monitor.c_monitor_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8* }
%struct.monitor_ops = type { i64, i32, i8**, i32, i8*, i8*, i32*, i64, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }

@MONITOR_OPS_MAGIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Magic number of monitor_ops struct wrong.\00", align 1
@targ_ops = common dso_local global %struct.TYPE_10__* null, align 8
@.str.1 = private unnamed_addr constant [117 x i8] c"Use `target %s DEVICE-NAME' to use a serial port, or \0A`target %s HOST-NAME:PORT-NUMBER' to use a network connection.\00", align 1
@register_pattern = common dso_local global i32 0, align 4
@register_fastmap = common dso_local global i32 0, align 4
@getmem_resp_delim_pattern = common dso_local global i32 0, align 4
@getmem_resp_delim_fastmap = common dso_local global i32 0, align 4
@setmem_resp_delim_pattern = common dso_local global i32 0, align 4
@setmem_resp_delim_fastmap = common dso_local global i32 0, align 4
@setreg_resp_delim_pattern = common dso_local global i32 0, align 4
@setreg_resp_delim_fastmap = common dso_local global i32 0, align 4
@dev_name = common dso_local global i64 0, align 8
@monitor_desc = common dso_local global i32 0, align 4
@baud_rate = common dso_local global i32 0, align 4
@current_monitor = common dso_local global %struct.monitor_ops* null, align 8
@MO_NO_ECHO_ON_OPEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"EXP Open echo\0A\00", align 1
@breakaddr = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Remote target %s connected to %s\0A\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @monitor_open(i8* %0, %struct.monitor_ops* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.monitor_ops*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store %struct.monitor_ops* %1, %struct.monitor_ops** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %10 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MONITOR_OPS_MAGIC, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %18 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %17, i32 0, i32 13
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** @targ_ops, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @targ_ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @target_preopen(i32 %30)
  %32 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %33 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %32, i32 0, i32 12
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %38 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %37, i32 0, i32 12
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @register_fastmap, align 4
  %41 = call i32 @compile_pattern(i64 %39, i32* @register_pattern, i32 %40)
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %44 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %43, i32 0, i32 11
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %50 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %49, i32 0, i32 11
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @getmem_resp_delim_fastmap, align 4
  %54 = call i32 @compile_pattern(i64 %52, i32* @getmem_resp_delim_pattern, i32 %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %57 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %56, i32 0, i32 10
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %63 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %62, i32 0, i32 10
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @setmem_resp_delim_fastmap, align 4
  %67 = call i32 @compile_pattern(i64 %65, i32* @setmem_resp_delim_pattern, i32 %66)
  br label %68

68:                                               ; preds = %61, %55
  %69 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %70 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %76 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %75, i32 0, i32 9
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @setreg_resp_delim_fastmap, align 4
  %80 = call i32 @compile_pattern(i64 %78, i32* @setreg_resp_delim_pattern, i32 %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @targ_ops, align 8
  %83 = call i32 @unpush_target(%struct.TYPE_10__* %82)
  %84 = load i64, i64* @dev_name, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i64, i64* @dev_name, align 8
  %88 = call i32 @xfree(i64 %87)
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @xstrdup(i8* %90)
  store i64 %91, i64* @dev_name, align 8
  %92 = load i64, i64* @dev_name, align 8
  %93 = call i32 @serial_open(i64 %92)
  store i32 %93, i32* @monitor_desc, align 4
  %94 = load i32, i32* @monitor_desc, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %89
  %97 = load i64, i64* @dev_name, align 8
  %98 = call i32 @perror_with_name(i64 %97)
  br label %99

99:                                               ; preds = %96, %89
  %100 = load i32, i32* @baud_rate, align 4
  %101 = icmp ne i32 %100, -1
  br i1 %101, label %102, label %113

102:                                              ; preds = %99
  %103 = load i32, i32* @monitor_desc, align 4
  %104 = load i32, i32* @baud_rate, align 4
  %105 = call i64 @serial_setbaudrate(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load i32, i32* @monitor_desc, align 4
  %109 = call i32 @serial_close(i32 %108)
  %110 = load i64, i64* @dev_name, align 8
  %111 = call i32 @perror_with_name(i64 %110)
  br label %112

112:                                              ; preds = %107, %102
  br label %113

113:                                              ; preds = %112, %99
  %114 = load i32, i32* @monitor_desc, align 4
  %115 = call i32 @serial_raw(i32 %114)
  %116 = load i32, i32* @monitor_desc, align 4
  %117 = call i32 @serial_flush_input(i32 %116)
  %118 = load i32, i32* @monitor_desc, align 4
  %119 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %120 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @serial_setstopbits(i32 %118, i32 %121)
  %123 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  store %struct.monitor_ops* %123, %struct.monitor_ops** @current_monitor, align 8
  %124 = load %struct.monitor_ops*, %struct.monitor_ops** @current_monitor, align 8
  %125 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %113
  %129 = call i32 (...) @monitor_stop()
  %130 = load %struct.monitor_ops*, %struct.monitor_ops** @current_monitor, align 8
  %131 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @MO_NO_ECHO_ON_OPEN, align 4
  %134 = and i32 %132, %133
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = call i32 @monitor_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %138 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %139

139:                                              ; preds = %136, %128
  br label %140

140:                                              ; preds = %139, %113
  %141 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %142 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %141, i32 0, i32 2
  %143 = load i8**, i8*** %142, align 8
  store i8** %143, i8*** %8, align 8
  br label %144

144:                                              ; preds = %165, %140
  %145 = load i8**, i8*** %8, align 8
  %146 = load i8*, i8** %145, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load %struct.monitor_ops*, %struct.monitor_ops** @current_monitor, align 8
  %150 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @MO_NO_ECHO_ON_OPEN, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i8**, i8*** %8, align 8
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @monitor_printf(i8* %157)
  br label %163

159:                                              ; preds = %148
  %160 = load i8**, i8*** %8, align 8
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @monitor_printf_noecho(i8* %161)
  br label %163

163:                                              ; preds = %159, %155
  %164 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %165

165:                                              ; preds = %163
  %166 = load i8**, i8*** %8, align 8
  %167 = getelementptr inbounds i8*, i8** %166, i32 1
  store i8** %167, i8*** %8, align 8
  br label %144

168:                                              ; preds = %144
  %169 = load i32, i32* @monitor_desc, align 4
  %170 = call i32 @serial_flush_input(i32 %169)
  %171 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %172 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %200

175:                                              ; preds = %168
  %176 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %177 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %182 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %181, i32 0, i32 3
  store i32 8, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %175
  %184 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %185 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = mul i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = call i64 @xmalloc(i32 %189)
  %191 = inttoptr i64 %190 to i32*
  store i32* %191, i32** @breakaddr, align 8
  %192 = load i32*, i32** @breakaddr, align 8
  %193 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %194 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = mul i64 %196, 4
  %198 = trunc i64 %197 to i32
  %199 = call i32 @memset(i32* %192, i32 0, i32 %198)
  br label %200

200:                                              ; preds = %183, %168
  %201 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %202 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %201, i32 0, i32 4
  %203 = load i8*, i8** %202, align 8
  %204 = icmp ne i8* %203, null
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load %struct.monitor_ops*, %struct.monitor_ops** %5, align 8
  %207 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %206, i32 0, i32 4
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @monitor_printf(i8* %208)
  %210 = call i32 @monitor_expect_prompt(i32* null, i32 0)
  br label %211

211:                                              ; preds = %205, %200
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i8*, i8** %7, align 8
  %216 = load i64, i64* @dev_name, align 8
  %217 = call i32 @printf_unfiltered(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %215, i64 %216)
  br label %218

218:                                              ; preds = %214, %211
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** @targ_ops, align 8
  %220 = call i32 @push_target(%struct.TYPE_10__* %219)
  %221 = call i32 @pid_to_ptid(i32 42000)
  store i32 %221, i32* @inferior_ptid, align 4
  %222 = load %struct.monitor_ops*, %struct.monitor_ops** @current_monitor, align 8
  %223 = getelementptr inbounds %struct.monitor_ops, %struct.monitor_ops* %222, i32 0, i32 5
  %224 = load i8*, i8** %223, align 8
  %225 = call i32 @monitor_printf(i8* %224)
  %226 = call i32 (...) @start_remote()
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @target_preopen(i32) #1

declare dso_local i32 @compile_pattern(i64, i32*, i32) #1

declare dso_local i32 @unpush_target(%struct.TYPE_10__*) #1

declare dso_local i32 @xfree(i64) #1

declare dso_local i64 @xstrdup(i8*) #1

declare dso_local i32 @serial_open(i64) #1

declare dso_local i32 @perror_with_name(i64) #1

declare dso_local i64 @serial_setbaudrate(i32, i32) #1

declare dso_local i32 @serial_close(i32) #1

declare dso_local i32 @serial_raw(i32) #1

declare dso_local i32 @serial_flush_input(i32) #1

declare dso_local i32 @serial_setstopbits(i32, i32) #1

declare dso_local i32 @monitor_stop(...) #1

declare dso_local i32 @monitor_debug(i8*) #1

declare dso_local i32 @monitor_expect_prompt(i32*, i32) #1

declare dso_local i32 @monitor_printf(i8*) #1

declare dso_local i32 @monitor_printf_noecho(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @printf_unfiltered(i8*, i8*, i64) #1

declare dso_local i32 @push_target(%struct.TYPE_10__*) #1

declare dso_local i32 @pid_to_ptid(i32) #1

declare dso_local i32 @start_remote(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
