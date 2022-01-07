; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_twrch.c_usage_twrch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_twrch.c_usage_twrch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"usage: brssl twrch [ options ]\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"   -trace          dump all packets on stderr\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"   -v              verbose error messages on stderr\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"   -server         act as an SSL server\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"   -client         act as an SSL client\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"   -sni name       use specified name for SNI\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"   -mono           use monodirectional buffering\0A\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"   -buf length     set the I/O buffer length (in bytes)\0A\00", align 1
@.str.9 = private unnamed_addr constant [68 x i8] c"   -cache length   set the session cache storage length (in bytes)\0A\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"   -cert fname     read certificate chain from file 'fname'\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"   -key fname      read private key from file 'fname'\0A\00", align 1
@.str.12 = private unnamed_addr constant [66 x i8] c"   -CA file        add trust anchors from 'file' (for peer auth)\0A\00", align 1
@.str.13 = private unnamed_addr constant [68 x i8] c"   -anon_ok        request but do not require a client certificate\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"   -nostaticecdh   prohibit full-static ECDH (client only)\0A\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"   -list           list supported names (protocols, algorithms...)\0A\00", align 1
@.str.16 = private unnamed_addr constant [69 x i8] c"   -vmin name      set minimum supported version (default: TLS-1.0)\0A\00", align 1
@.str.17 = private unnamed_addr constant [69 x i8] c"   -vmax name      set maximum supported version (default: TLS-1.2)\0A\00", align 1
@.str.18 = private unnamed_addr constant [74 x i8] c"   -cs names       set list of supported cipher suites (comma-separated)\0A\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"   -hf names       add support for some hash functions (comma-separated)\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"   -minhello len   set minimum ClientHello length (in bytes)\0A\00", align 1
@.str.21 = private unnamed_addr constant [67 x i8] c"   -serverpref     enforce server's preferences for cipher suites\0A\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"   -noreneg        prohibit renegotiations\0A\00", align 1
@.str.23 = private unnamed_addr constant [76 x i8] c"   -alpn name      add protocol name to list of protocols (ALPN extension)\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"   -strictalpn     fail on ALPN mismatch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage_twrch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage_twrch() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0))
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.12, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.13, i64 0, i64 0))
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i64 0, i64 0))
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.15, i64 0, i64 0))
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.16, i64 0, i64 0))
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.17, i64 0, i64 0))
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.18, i64 0, i64 0))
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i64 0, i64 0))
  %41 = load i32, i32* @stderr, align 4
  %42 = call i32 @fprintf(i32 %41, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0))
  %43 = load i32, i32* @stderr, align 4
  %44 = call i32 @fprintf(i32 %43, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.21, i64 0, i64 0))
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i64 0, i64 0))
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.23, i64 0, i64 0))
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
