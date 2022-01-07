; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_read_bdm_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_read_bdm_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCD_READ_REGS = common dso_local global i8 0, align 1
@remote_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"read_bdm_registers:\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Register block size bad:  %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ocd_read_bdm_registers(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %14 = load i8, i8* @OCD_READ_REGS, align 1
  %15 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  store i8 %14, i8* %15, align 1
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 8
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 1
  store i8 %18, i8* %19, align 1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 2
  store i8 %22, i8* %23, align 1
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 %26, i8* %27, align 1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 4
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %33 = call i32 @ocd_put_packet(i8* %32, i32 5)
  %34 = load i8, i8* @OCD_READ_REGS, align 1
  %35 = load i32, i32* @remote_timeout, align 4
  %36 = call i8* @ocd_get_packet(i8 zeroext %34, i32* %13, i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @ocd_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %47, %3
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 256, i32* %8, align 4
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %13, align 4
  %61 = sub nsw i32 %60, 4
  %62 = icmp sgt i32 %59, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = and i32 %64, 3
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32, i32* %8, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  store i8* %74, i8** %10, align 8
  %75 = load i8*, i8** %10, align 8
  ret i8* %75
}

declare dso_local i32 @ocd_put_packet(i8*, i32) #1

declare dso_local i8* @ocd_get_packet(i8 zeroext, i32*, i32) #1

declare dso_local i32 @ocd_error(i8*, i32) #1

declare dso_local i32 @error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
