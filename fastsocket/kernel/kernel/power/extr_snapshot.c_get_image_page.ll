; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_get_image_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/power/extr_snapshot.c_get_image_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@allocated_unsafe_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32)* @get_image_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_image_page(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @get_zeroed_page(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %22, %11
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @virt_to_page(i8* %16)
  %18 = call i64 @swsusp_page_is_free(i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i1 [ false, %12 ], [ %19, %15 ]
  br i1 %21, label %22, label %31

22:                                               ; preds = %20
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @virt_to_page(i8* %23)
  %25 = call i32 @swsusp_set_page_forbidden(i32 %24)
  %26 = load i32, i32* @allocated_unsafe_pages, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @allocated_unsafe_pages, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @get_zeroed_page(i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %5, align 8
  br label %12

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @virt_to_page(i8* %36)
  %38 = call i32 @swsusp_set_page_forbidden(i32 %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @virt_to_page(i8* %39)
  %41 = call i32 @swsusp_set_page_free(i32 %40)
  br label %42

42:                                               ; preds = %35, %32
  %43 = load i8*, i8** %5, align 8
  ret i8* %43
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i64 @swsusp_page_is_free(i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i32 @swsusp_set_page_forbidden(i32) #1

declare dso_local i32 @swsusp_set_page_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
