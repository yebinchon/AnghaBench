; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_cplus_demangle_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_cplus_demangle_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_growable_string = type { i8*, i32, i64 }

@d_growable_string_callback_adapter = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @cplus_demangle_print(i32 %0, %struct.demangle_component* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.d_growable_string, align 8
  store i32 %0, i32* %6, align 4
  store %struct.demangle_component* %1, %struct.demangle_component** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = call i32 @d_growable_string_init(%struct.d_growable_string* %10, i32 %11)
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %15 = load i32, i32* @d_growable_string_callback_adapter, align 4
  %16 = call i32 @cplus_demangle_print_callback(i32 %13, %struct.demangle_component* %14, i32 %15, %struct.d_growable_string* %10)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %10, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @free(i8* %20)
  %22 = load i64*, i64** %9, align 8
  store i64 0, i64* %22, align 8
  store i8* null, i8** %5, align 8
  br label %37

23:                                               ; preds = %4
  %24 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %10, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %31

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %10, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  br label %31

31:                                               ; preds = %28, %27
  %32 = phi i32 [ 1, %27 ], [ %30, %28 ]
  %33 = sext i32 %32 to i64
  %34 = load i64*, i64** %9, align 8
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.d_growable_string, %struct.d_growable_string* %10, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %31, %18
  %38 = load i8*, i8** %5, align 8
  ret i8* %38
}

declare dso_local i32 @d_growable_string_init(%struct.d_growable_string*, i32) #1

declare dso_local i32 @cplus_demangle_print_callback(i32, %struct.demangle_component*, i32, %struct.d_growable_string*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
