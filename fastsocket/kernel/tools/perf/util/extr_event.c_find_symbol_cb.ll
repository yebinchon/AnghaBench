; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_find_symbol_cb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_find_symbol_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.process_symbol_args = type { i32, i32 }

@MAP__FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8, i32)* @find_symbol_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_symbol_cb(i8* %0, i8* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.process_symbol_args*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.process_symbol_args*
  store %struct.process_symbol_args* %12, %struct.process_symbol_args** %10, align 8
  %13 = load i8, i8* %8, align 1
  %14 = load i32, i32* @MAP__FUNCTION, align 4
  %15 = call i64 @symbol_type__is_a(i8 signext %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i8, i8* %8, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 65
  br i1 %20, label %21, label %28

21:                                               ; preds = %17, %4
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.process_symbol_args*, %struct.process_symbol_args** %10, align 8
  %24 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @strcmp(i8* %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21, %17
  store i32 0, i32* %5, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.process_symbol_args*, %struct.process_symbol_args** %10, align 8
  %32 = getelementptr inbounds %struct.process_symbol_args, %struct.process_symbol_args* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  store i32 1, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i64 @symbol_type__is_a(i8 signext, i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
