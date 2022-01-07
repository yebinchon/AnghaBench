; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_file2alias.c_do_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"MODULE_ALIAS(\22%s\22);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i64, i8*, i8*, %struct.module*)* @do_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_table(i8* %0, i64 %1, i64 %2, i8* %3, i8* %4, %struct.module* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [500 x i8], align 16
  %15 = alloca i32 (i8*, i8*, i8*)*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store %struct.module* %5, %struct.module** %12, align 8
  %16 = load i8*, i8** %11, align 8
  %17 = bitcast i8* %16 to i32 (i8*, i8*, i8*)*
  store i32 (i8*, i8*, i8*)* %17, i32 (i8*, i8*, i8*)** %15, align 8
  %18 = load %struct.module*, %struct.module** %12, align 8
  %19 = getelementptr inbounds %struct.module, %struct.module* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @device_id_check(i8* %20, i8* %21, i64 %22, i64 %23, i8* %24)
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %27, %26
  store i64 %28, i64* %8, align 8
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %52, %6
  %30 = load i32, i32* %13, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* %8, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %29
  %35 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %15, align 8
  %36 = load %struct.module*, %struct.module** %12, align 8
  %37 = getelementptr inbounds %struct.module, %struct.module* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %44 = call i32 %35(i8* %38, i8* %42, i8* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load %struct.module*, %struct.module** %12, align 8
  %48 = getelementptr inbounds %struct.module, %struct.module* %47, i32 0, i32 1
  %49 = getelementptr inbounds [500 x i8], [500 x i8]* %14, i64 0, i64 0
  %50 = call i32 @buf_printf(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %46, %34
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %13, align 4
  %55 = zext i32 %54 to i64
  %56 = add i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %13, align 4
  br label %29

58:                                               ; preds = %29
  ret void
}

declare dso_local i32 @device_id_check(i8*, i8*, i64, i64, i8*) #1

declare dso_local i32 @buf_printf(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
