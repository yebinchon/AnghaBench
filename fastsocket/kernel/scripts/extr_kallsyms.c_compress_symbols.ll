; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_compress_symbols.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_compress_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@table_cnt = common dso_local global i32 0, align 4
@table = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @compress_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_symbols(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %93, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @table_cnt, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %96

14:                                               ; preds = %10
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i8*, i8** %3, align 8
  %30 = call i8* @find_token(i8* %27, i32 %28, i8* %29)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %14
  br label %93

34:                                               ; preds = %14
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @forget_symbol(i8* %40, i32 %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %75, %34
  %45 = load i32, i32* %4, align 4
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %9, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i8*, i8** %9, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %9, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = sub nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @memmove(i8* %59, i8* %61, i32 %62)
  %64 = load i8*, i8** %9, align 8
  store i8* %64, i8** %8, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, -1
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ult i32 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %44
  br label %78

70:                                               ; preds = %44
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = call i8* @find_token(i8* %71, i32 %72, i8* %73)
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %70
  %76 = load i8*, i8** %9, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %44, label %78

78:                                               ; preds = %75, %69
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @table, align 8
  %86 = load i32, i32* %5, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @learn_symbol(i8* %90, i32 %91)
  br label %93

93:                                               ; preds = %78, %33
  %94 = load i32, i32* %5, align 4
  %95 = add i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %10

96:                                               ; preds = %10
  ret void
}

declare dso_local i8* @find_token(i8*, i32, i8*) #1

declare dso_local i32 @forget_symbol(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @learn_symbol(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
