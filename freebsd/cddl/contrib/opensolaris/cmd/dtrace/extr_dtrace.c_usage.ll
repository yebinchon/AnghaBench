; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/extr_dtrace.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@usage.predact = internal constant [24 x i8] c"[[ predicate ] action ]\00", align 16
@.str = private unnamed_addr constant [337 x i8] c"Usage: %s [-32|-64] [-aACeFGhHlqSvVwZ] [-b bufsz] [-c cmd] [-D name[=def]]\0A\09[-I path] [-L path] [-o output] [-p pid] [-s script] [-U name]\0A\09[-x opt[=val]] [-X a|c|s|t]\0A\0A\09[-P provider %s]\0A\09[-m [ provider: ] module %s]\0A\09[-f [[ provider: ] module: ] func %s]\0A\09[-n [[[ provider: ] module: ] func: ] name %s]\0A\09[-i probe-id %s] [ args ... ]\0A\0A\00", align 1
@g_pname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"\09predicate -> '/' D-expression '/'\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"\09   action -> '{' D-statements '}'\0A\00", align 1
@.str.3 = private unnamed_addr constant [1681 x i8] c"\0A\09-32 generate 32-bit D programs and ELF files\0A\09-64 generate 64-bit D programs and ELF files\0A\0A\09-a  claim anonymous tracing state\0A\09-A  generate driver.conf(4) directives for anonymous tracing\0A\09-b  set trace buffer size\0A\09-c  run specified command and exit upon its completion\0A\09-C  run cpp(1) preprocessor on script files\0A\09-D  define symbol when invoking preprocessor\0A\09-e  exit after compiling request but prior to enabling probes\0A\09-f  enable or list probes matching the specified function name\0A\09-F  coalesce trace output by function\0A\09-G  generate an ELF file containing embedded dtrace program\0A\09-h  generate a header file with definitions for static probes\0A\09-H  print included files when invoking preprocessor\0A\09-i  enable or list probes matching the specified probe id\0A\09-I  add include directory to preprocessor search path\0A\09-l  list probes matching specified criteria\0A\09-L  add library directory to library search path\0A\09-m  enable or list probes matching the specified module name\0A\09-n  enable or list probes matching the specified probe name\0A\09-o  set output file\0A\09-p  grab specified process-ID and cache its symbol tables\0A\09-P  enable or list probes matching the specified provider name\0A\09-q  set quiet mode (only output explicitly traced data)\0A\09-s  enable or list probes according to the specified D script\0A\09-S  print D compiler intermediate code\0A\09-U  undefine symbol when invoking preprocessor\0A\09-v  set verbose mode (report stability attributes, arguments)\0A\09-V  report DTrace API version\0A\09-w  permit destructive actions\0A\09-x  enable or modify compiler and tracing options\0A\09-X  specify ISO C conformance settings for preprocessor\0A\09-Z  permit probe descriptions that match zero probes\0A\00", align 1
@E_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usage(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i8*, i8** @g_pname, align 8
  %5 = call i32 (i32*, i8*, ...) @fprintf(i32* %3, i8* getelementptr inbounds ([337 x i8], [337 x i8]* @.str, i64 0, i64 0), i8* %4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @usage.predact, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @usage.predact, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @usage.predact, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @usage.predact, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @usage.predact, i64 0, i64 0))
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 (i32*, i8*, ...) @fprintf(i32* %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 (i32*, i8*, ...) @fprintf(i32* %10, i8* getelementptr inbounds ([1681 x i8], [1681 x i8]* @.str.3, i64 0, i64 0))
  %12 = load i32, i32* @E_USAGE, align 4
  ret i32 %12
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
