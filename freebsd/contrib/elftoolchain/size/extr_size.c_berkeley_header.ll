; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_berkeley_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/size/extr_size.c_berkeley_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@berkeley_header.printed = internal global i32 0, align 4
@bss_size = common dso_local global i64 0, align 8
@data_size = common dso_local global i64 0, align 8
@text_size = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bss\00", align 1
@radix = common dso_local global i64 0, align 8
@RADIX_OCTAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"hex\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @berkeley_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @berkeley_header() #0 {
  store i64 0, i64* @bss_size, align 8
  store i64 0, i64* @data_size, align 8
  store i64 0, i64* @text_size, align 8
  %1 = load i32, i32* @berkeley_header.printed, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %19, label %3

3:                                                ; preds = %0
  %4 = call i32 @tbl_new(i32 6)
  %5 = call i32 (...) @tbl_append()
  %6 = call i32 @tbl_print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0)
  %7 = call i32 @tbl_print(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %8 = call i32 @tbl_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %9 = load i64, i64* @radix, align 8
  %10 = load i64, i64* @RADIX_OCTAL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @tbl_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 3)
  br label %16

14:                                               ; preds = %3
  %15 = call i32 @tbl_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  br label %16

16:                                               ; preds = %14, %12
  %17 = call i32 @tbl_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %18 = call i32 @tbl_print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 5)
  store i32 1, i32* @berkeley_header.printed, align 4
  br label %19

19:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @tbl_new(i32) #1

declare dso_local i32 @tbl_append(...) #1

declare dso_local i32 @tbl_print(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
