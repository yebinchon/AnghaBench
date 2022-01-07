; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_CCM.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/test/extr_test_crypto.c_test_CCM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"aes_big\00", align 1
@br_aes_big_ctrcbc_vtable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"aes_small\00", align 1
@br_aes_small_ctrcbc_vtable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"aes_ct\00", align 1
@br_aes_ct_ctrcbc_vtable = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"aes_ct64\00", align 1
@br_aes_ct64_ctrcbc_vtable = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"aes_x86ni\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Test CCM aes_x86ni: UNAVAILABLE\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"aes_pwr8\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Test CCM aes_pwr8: UNAVAILABLE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_CCM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CCM() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @test_CCM_inner(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* @br_aes_big_ctrcbc_vtable)
  %3 = call i32 @test_CCM_inner(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* @br_aes_small_ctrcbc_vtable)
  %4 = call i32 @test_CCM_inner(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* @br_aes_ct_ctrcbc_vtable)
  %5 = call i32 @test_CCM_inner(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32* @br_aes_ct64_ctrcbc_vtable)
  %6 = call i32* (...) @br_aes_x86ni_ctrcbc_get_vtable()
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** %1, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @test_CCM_inner(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %10)
  br label %14

12:                                               ; preds = %0
  %13 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9
  %15 = call i32* (...) @br_aes_pwr8_ctrcbc_get_vtable()
  store i32* %15, i32** %1, align 8
  %16 = load i32*, i32** %1, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @test_CCM_inner(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32* %19)
  br label %23

21:                                               ; preds = %14
  %22 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @test_CCM_inner(i8*, i32*) #1

declare dso_local i32* @br_aes_x86ni_ctrcbc_get_vtable(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32* @br_aes_pwr8_ctrcbc_get_vtable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
