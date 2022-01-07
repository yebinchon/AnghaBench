; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_make_symbol_overload_list_using.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_cp-support.c_make_symbol_overload_list_using.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.using_direct = type { i8*, i32, %struct.using_direct* }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @make_symbol_overload_list_using to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_symbol_overload_list_using(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.using_direct*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @get_selected_block(i32 0)
  %8 = call %struct.using_direct* @block_using(i32 %7)
  store %struct.using_direct* %8, %struct.using_direct** %5, align 8
  br label %9

9:                                                ; preds = %25, %2
  %10 = load %struct.using_direct*, %struct.using_direct** %5, align 8
  %11 = icmp ne %struct.using_direct* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load %struct.using_direct*, %struct.using_direct** %5, align 8
  %15 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @strcmp(i8* %13, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = load %struct.using_direct*, %struct.using_direct** %5, align 8
  %22 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  call void @make_symbol_overload_list_using(i8* %20, i8* %23)
  br label %24

24:                                               ; preds = %19, %12
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.using_direct*, %struct.using_direct** %5, align 8
  %27 = getelementptr inbounds %struct.using_direct, %struct.using_direct* %26, i32 0, i32 2
  %28 = load %struct.using_direct*, %struct.using_direct** %27, align 8
  store %struct.using_direct* %28, %struct.using_direct** %5, align 8
  br label %9

29:                                               ; preds = %9
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @make_symbol_overload_list_qualified(i8* %36)
  br label %57

38:                                               ; preds = %29
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = add nsw i64 %40, 2
  %42 = load i8*, i8** %3, align 8
  %43 = call i64 @strlen(i8* %42)
  %44 = add nsw i64 %41, %43
  %45 = add nsw i64 %44, 1
  %46 = call i8* @alloca(i64 %45)
  store i8* %46, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcpy(i8* %47, i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcat(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %52 = load i8*, i8** %6, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = call i32 @strcat(i8* %52, i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @make_symbol_overload_list_qualified(i8* %55)
  br label %57

57:                                               ; preds = %38, %35
  ret void
}

declare dso_local %struct.using_direct* @block_using(i32) #1

declare dso_local i32 @get_selected_block(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @make_symbol_overload_list_qualified(i8*) #1

declare dso_local i8* @alloca(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
