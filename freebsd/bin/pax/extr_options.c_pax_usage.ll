; ModuleID = '/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_pax_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/pax/extr_options.c_pax_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"usage: pax [-cdnOvz] [-E limit] [-f archive] \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"[-s replstr] ... [-U user] ...\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\0A\09   [-G group] ... \00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"[-T [from_date][,to_date]] ... \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"[pattern ...]\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"       pax -r [-cdiknOuvzDYZ] [-E limit] \00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"[-f archive] [-o options] ... \0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"\09   [-p string] ... [-s replstr] ... \00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"[-U user] ... [-G group] ...\0A\09   \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c" [pattern ...]\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"       pax -w [-dituvzHLOPX] [-b blocksize] \00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"[ [-a] [-f archive] ] [-x format] \0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\09   [-B bytes] [-s replstr] ... \00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"[-o options] ... [-U user] ...\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"[-T [from_date][,to_date][/[c][m]]] ... \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"[file ...]\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"       pax -r -w [-diklntuvDHLOPXYZ] \00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"[-p string] ... [-s replstr] ...\00", align 1
@.str.18 = private unnamed_addr constant [35 x i8] c"\0A\09   [-U user] ... [-G group] ... \00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"\0A\09   [file ...] directory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pax_usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fputs(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %1)
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %3)
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fputs(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fputs(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.18, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fputs(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i32 %45)
  %47 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @fputs(i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
