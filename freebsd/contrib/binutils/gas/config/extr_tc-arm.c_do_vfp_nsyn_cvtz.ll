; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_cvtz.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_do_vfp_nsyn_cvtz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NS_FF = common dso_local global i32 0, align 4
@NS_FD = common dso_local global i32 0, align 4
@NS_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ftosizs\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ftouizs\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ftosizd\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ftouizd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_vfp_nsyn_cvtz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_vfp_nsyn_cvtz() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8*], align 16
  %4 = load i32, i32* @NS_FF, align 4
  %5 = load i32, i32* @NS_FD, align 4
  %6 = load i32, i32* @NS_NULL, align 4
  %7 = call i32 @neon_select_shape(i32 %4, i32 %5, i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = call i32 @neon_cvt_flavour(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = bitcast [8 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 64, i1 false)
  %11 = bitcast i8* %10 to [8 x i8*]*
  %12 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8** %12, align 16
  %13 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8** %13, align 8
  %14 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i32 0, i32 6
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8** %14, align 16
  %15 = getelementptr inbounds [8 x i8*], [8 x i8*]* %11, i32 0, i32 7
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8** %15, align 8
  %16 = load i32, i32* %2, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %0
  %19 = load i32, i32* %2, align 4
  %20 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 0
  %21 = call i64 @ARRAY_SIZE(i8** %20)
  %22 = trunc i64 %21 to i32
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i8*], [8 x i8*]* %3, i64 0, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @do_vfp_nsyn_opcode(i8* %34)
  br label %36

36:                                               ; preds = %30, %24, %18, %0
  ret void
}

declare dso_local i32 @neon_select_shape(i32, i32, i32) #1

declare dso_local i32 @neon_cvt_flavour(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @do_vfp_nsyn_opcode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
