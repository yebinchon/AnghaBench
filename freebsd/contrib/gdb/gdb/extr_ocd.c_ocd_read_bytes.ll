; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_read_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCD_READ_MEM = common dso_local global i8 0, align 1
@remote_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Truncated response packet from OCD device\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"ocd_read_bytes:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @ocd_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocd_read_bytes(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [266 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i8, i8* @OCD_READ_MEM, align 1
  %17 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 0
  store i8 %16, i8* %17, align 16
  %18 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 5
  store i8 1, i8* %18, align 1
  br label %19

19:                                               ; preds = %103, %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %119

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @min(i32 %23, i32 249)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %4, align 4
  %26 = ashr i32 %25, 24
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 1
  store i8 %27, i8* %28, align 1
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 16
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 2
  store i8 %31, i8* %32, align 2
  %33 = load i32, i32* %4, align 4
  %34 = ashr i32 %33, 8
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 3
  store i8 %35, i8* %36, align 1
  %37 = load i32, i32* %4, align 4
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 4
  store i8 %38, i8* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 6
  store i8 %41, i8* %42, align 2
  %43 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 0
  %44 = call i32 @ocd_put_packet(i8* %43, i32 7)
  %45 = load i8, i8* @OCD_READ_MEM, align 1
  %46 = load i32, i32* @remote_timeout, align 4
  %47 = call i8* @ocd_get_packet(i8 signext %45, i32* %11, i32 %46)
  store i8* %47, i8** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %52

50:                                               ; preds = %22
  %51 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %22
  %53 = load i8*, i8** %8, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %61, 17
  br i1 %62, label %63, label %96

63:                                               ; preds = %52
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 3
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = shl i32 %67, 24
  store i32 %68, i32* %14, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = shl i32 %72, 16
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 5
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 8
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 6
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %4, align 4
  %91 = sub nsw i32 %89, %90
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @EIO, align 4
  store i32 %95, i32* @errno, align 4
  br label %119

96:                                               ; preds = %52
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @ocd_error(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %96
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %5, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @memcpy(i8* %104, i8* %106, i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %6, align 4
  %111 = sub nsw i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i8*, i8** %5, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %5, align 8
  br label %19

119:                                              ; preds = %63, %19
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* %6, align 4
  %122 = sub nsw i32 %120, %121
  ret i32 %122
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ocd_put_packet(i8*, i32) #1

declare dso_local i8* @ocd_get_packet(i8 signext, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @ocd_error(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
