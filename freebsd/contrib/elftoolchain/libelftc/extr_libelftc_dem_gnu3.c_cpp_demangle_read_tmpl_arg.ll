; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_tmpl_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_read_tmpl_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_tmpl_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_tmpl_arg(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %4 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %5 = icmp eq %struct.cpp_demangle_data* %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %8 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %44

14:                                               ; preds = %6
  %15 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %16 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %41 [
    i32 76, label %20
    i32 88, label %23
  ]

20:                                               ; preds = %14
  %21 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %22 = call i32 @cpp_demangle_read_expr_primary(%struct.cpp_demangle_data* %21)
  store i32 %22, i32* %2, align 4
  br label %44

23:                                               ; preds = %14
  %24 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %25 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %25, align 8
  %28 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %29 = call i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %44

32:                                               ; preds = %23
  %33 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %34 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %34, align 8
  %37 = load i8, i8* %35, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 69
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %14
  %42 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %43 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %42, i32* null)
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %41, %32, %31, %20, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @cpp_demangle_read_expr_primary(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
