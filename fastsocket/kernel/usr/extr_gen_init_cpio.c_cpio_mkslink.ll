; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/usr/extr_gen_init_cpio.c_cpio_mkslink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/usr/extr_gen_init_cpio.c_cpio_mkslink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [58 x i8] c"%s%08X%08X%08lX%08lX%08X%08lX%08X%08X%08X%08X%08X%08X%08X\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@ino = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64, i64)* @cpio_mkslink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpio_mkslink(i8* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [256 x i8], align 16
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = call i64 @time(i32* null)
  store i64 %13, i64* %12, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %15 = load i32, i32* @ino, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @ino, align 4
  %17 = load i32, i32* @S_IFLNK, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %17, %18
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %12, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strlen(i8* %23)
  %25 = trunc i64 %24 to i32
  %26 = add i32 %25, 1
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @strlen(i8* %27)
  %29 = trunc i64 %28 to i32
  %30 = add i32 %29, 1
  %31 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %15, i32 %19, i64 %20, i64 %21, i32 1, i64 %22, i32 %26, i32 3, i32 1, i32 0, i32 0, i32 %30, i32 0)
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %33 = call i32 @push_hdr(i8* %32)
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @push_string(i8* %34)
  %36 = call i32 (...) @push_pad()
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @push_string(i8* %37)
  %39 = call i32 (...) @push_pad()
  ret i32 0
}

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @push_hdr(i8*) #1

declare dso_local i32 @push_string(i8*) #1

declare dso_local i32 @push_pad(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
