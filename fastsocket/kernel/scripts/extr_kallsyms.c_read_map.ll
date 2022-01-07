; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_read_map.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/extr_kallsyms.c_read_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@table_cnt = common dso_local global i32 0, align 4
@table_size = common dso_local global i32 0, align 4
@table = common dso_local global %struct.TYPE_5__* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @read_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_map(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  br label %3

3:                                                ; preds = %45, %1
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @feof(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  br i1 %7, label %8, label %46

8:                                                ; preds = %3
  %9 = load i32, i32* @table_cnt, align 4
  %10 = load i32, i32* @table_size, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i32, i32* @table_size, align 4
  %14 = add nsw i32 %13, 10000
  store i32 %14, i32* @table_size, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table, align 8
  %16 = load i32, i32* @table_size, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %15, i32 %19)
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** @table, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table, align 8
  %22 = icmp ne %struct.TYPE_5__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %26 = call i32 @exit(i32 1) #3
  unreachable

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27, %8
  %29 = load i32*, i32** %2, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table, align 8
  %31 = load i32, i32* @table_cnt, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = call i64 @read_symbol(i32* %29, %struct.TYPE_5__* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load i32, i32* @table_cnt, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @table, align 8
  %39 = load i32, i32* @table_cnt, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %37, i32* %42, align 4
  %43 = load i32, i32* @table_cnt, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @table_cnt, align 4
  br label %45

45:                                               ; preds = %36, %28
  br label %3

46:                                               ; preds = %3
  ret void
}

declare dso_local i32 @feof(i32*) #1

declare dso_local %struct.TYPE_5__* @realloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @read_symbol(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
