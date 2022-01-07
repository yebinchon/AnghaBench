; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_skey.c_usage_skey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/tools/extr_skey.c_usage_skey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"usage: brssl skey [ options ] file...\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"   -q             suppress verbose messages\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"   -text          print private key details (human-readable)\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"   -C             print private key details (C code)\0A\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"   -rawder file   save private key in 'file' (raw format, DER)\0A\00", align 1
@.str.6 = private unnamed_addr constant [64 x i8] c"   -rawpem file   save private key in 'file' (raw format, PEM)\0A\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"   -pk8der file   save private key in 'file' (PKCS#8 format, DER)\0A\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"   -pk8pem file   save private key in 'file' (PKCS#8 format, PEM)\0A\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"   -gen spec      generate a new key using the provided key specification\0A\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"   -list          list known elliptic curve names\0A\00", align 1
@.str.11 = private unnamed_addr constant [75 x i8] c"Key specification begins with a key type, followed by optional parameters\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"that depend on the key type, separated by colon characters:\0A\00", align 1
@.str.13 = private unnamed_addr constant [71 x i8] c"   rsa[:size[:pubexep]]   RSA key (defaults: size = 2048, pubexp = 3)\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"   ec[:curvename]         EC key (default curve: secp256r1)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage_skey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage_skey() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @stderr, align 4
  %4 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @stderr, align 4
  %6 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @stderr, align 4
  %10 = call i32 @fprintf(i32 %9, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 @fprintf(i32 %13, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 @fprintf(i32 %15, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0))
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0))
  %21 = load i32, i32* @stderr, align 4
  %22 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.11, i64 0, i64 0))
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0))
  %27 = load i32, i32* @stderr, align 4
  %28 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.13, i64 0, i64 0))
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
