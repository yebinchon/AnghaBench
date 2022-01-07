; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_add_unique.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_ldlang.c_lang_add_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unique_sections = type { %struct.unique_sections*, i32 }

@unique_section_list = common dso_local global %struct.unique_sections* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lang_add_unique(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.unique_sections*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load %struct.unique_sections*, %struct.unique_sections** @unique_section_list, align 8
  store %struct.unique_sections* %4, %struct.unique_sections** %3, align 8
  br label %5

5:                                                ; preds = %17, %1
  %6 = load %struct.unique_sections*, %struct.unique_sections** %3, align 8
  %7 = icmp ne %struct.unique_sections* %6, null
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load %struct.unique_sections*, %struct.unique_sections** %3, align 8
  %10 = getelementptr inbounds %struct.unique_sections, %struct.unique_sections* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i64 @strcmp(i32 %11, i8* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %31

16:                                               ; preds = %8
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.unique_sections*, %struct.unique_sections** %3, align 8
  %19 = getelementptr inbounds %struct.unique_sections, %struct.unique_sections* %18, i32 0, i32 0
  %20 = load %struct.unique_sections*, %struct.unique_sections** %19, align 8
  store %struct.unique_sections* %20, %struct.unique_sections** %3, align 8
  br label %5

21:                                               ; preds = %5
  %22 = call %struct.unique_sections* @xmalloc(i32 16)
  store %struct.unique_sections* %22, %struct.unique_sections** %3, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @xstrdup(i8* %23)
  %25 = load %struct.unique_sections*, %struct.unique_sections** %3, align 8
  %26 = getelementptr inbounds %struct.unique_sections, %struct.unique_sections* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.unique_sections*, %struct.unique_sections** @unique_section_list, align 8
  %28 = load %struct.unique_sections*, %struct.unique_sections** %3, align 8
  %29 = getelementptr inbounds %struct.unique_sections, %struct.unique_sections* %28, i32 0, i32 0
  store %struct.unique_sections* %27, %struct.unique_sections** %29, align 8
  %30 = load %struct.unique_sections*, %struct.unique_sections** %3, align 8
  store %struct.unique_sections* %30, %struct.unique_sections** @unique_section_list, align 8
  br label %31

31:                                               ; preds = %21, %15
  ret void
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.unique_sections* @xmalloc(i32) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
