; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_write_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ocd.c_ocd_write_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@write_mem_command = common dso_local global i8 0, align 1
@OCD_WRITE_MEM = common dso_local global i32 0, align 4
@remote_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Truncated response packet from OCD device\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"ocd_write_bytes:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocd_write_bytes(i32 %0, i8* %1, i32 %2) #0 {
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
  %16 = load i8, i8* @write_mem_command, align 1
  %17 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 0
  store i8 %16, i8* %17, align 16
  %18 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 5
  store i8 1, i8* %18, align 1
  %19 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 6
  store i8 0, i8* %19, align 2
  br label %20

20:                                               ; preds = %110, %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %121

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @min(i32 %24, i32 248)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 24
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 1
  store i8 %28, i8* %29, align 1
  %30 = load i32, i32* %4, align 4
  %31 = ashr i32 %30, 16
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 2
  store i8 %32, i8* %33, align 2
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %34, 8
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 3
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %4, align 4
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 4
  store i8 %39, i8* %40, align 4
  %41 = load i32, i32* %10, align 4
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 7
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @memcpy(i8* %44, i8* %45, i32 %46)
  %48 = getelementptr inbounds [266 x i8], [266 x i8]* %7, i64 0, i64 0
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 8, %49
  %51 = call i32 @ocd_put_packet(i8* %48, i32 %50)
  %52 = load i32, i32* @OCD_WRITE_MEM, align 4
  %53 = load i32, i32* @remote_timeout, align 4
  %54 = call i8* @ocd_get_packet(i32 %52, i32* %11, i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 3
  br i1 %56, label %57, label %59

57:                                               ; preds = %23
  %58 = call i32 @error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %23
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  store i32 %63, i32* %12, align 4
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp eq i32 %68, 17
  br i1 %69, label %70, label %103

70:                                               ; preds = %59
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = shl i32 %74, 24
  store i32 %75, i32* %14, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 4
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = shl i32 %79, 16
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %14, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 5
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 8
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 6
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %14, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* @EIO, align 4
  store i32 %102, i32* @errno, align 4
  br label %121

103:                                              ; preds = %59
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = call i32 @ocd_error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %6, align 4
  %113 = sub nsw i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %4, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i8*, i8** %5, align 8
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %5, align 8
  br label %20

121:                                              ; preds = %70, %20
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 %122, %123
  ret i32 %124
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ocd_put_packet(i8*, i32) #1

declare dso_local i8* @ocd_get_packet(i32, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @ocd_error(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
