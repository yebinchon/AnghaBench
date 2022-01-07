; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386obsd-tdep.c_i386obsd_pc_in_sigtramp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_i386obsd-tdep.c_i386obsd_pc_in_sigtramp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i386obsd_page_size = common dso_local global i32 0, align 4
@__const.i386obsd_pc_in_sigtramp.sigreturn = private unnamed_addr constant [7 x i8] c"\B8g\00\00\00\CD\80", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @i386obsd_pc_in_sigtramp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i386obsd_pc_in_sigtramp(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [7 x i8], align 1
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @i386obsd_page_size, align 4
  %11 = sub nsw i32 %10, 1
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  store i32 %13, i32* %6, align 4
  %14 = bitcast [7 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %14, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.i386obsd_pc_in_sigtramp.sigreturn, i32 0, i32 0), i64 7, i1 false)
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 60
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %42

24:                                               ; preds = %17, %2
  %25 = call i8* @alloca(i32 7)
  store i8* %25, i8** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 20
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @target_read_memory(i32 %27, i8* %28, i32 7)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds [7 x i8], [7 x i8]* %7, i64 0, i64 0
  %35 = call i64 @memcmp(i8* %33, i8* %34, i32 7)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %42

38:                                               ; preds = %32
  %39 = load i32, i32* %4, align 4
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @i386bsd_pc_in_sigtramp(i32 %39, i8* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %37, %31, %23
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @alloca(i32) #2

declare dso_local i64 @target_read_memory(i32, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i32 @i386bsd_pc_in_sigtramp(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
