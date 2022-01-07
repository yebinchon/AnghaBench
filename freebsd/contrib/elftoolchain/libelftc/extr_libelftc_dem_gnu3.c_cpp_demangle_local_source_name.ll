; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_local_source_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_gnu3.c_cpp_demangle_local_source_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_local_source_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_local_source_name(%struct.cpp_demangle_data* %0) #0 {
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
  %12 = icmp ne i32 %11, 76
  br i1 %12, label %13, label %14

13:                                               ; preds = %6, %1
  store i32 0, i32* %2, align 4
  br label %49

14:                                               ; preds = %6
  %15 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %16 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %16, align 8
  %19 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %20 = call i32 @cpp_demangle_read_sname(%struct.cpp_demangle_data* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %49

23:                                               ; preds = %14
  %24 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %25 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 95
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %32 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %32, align 8
  br label %35

35:                                               ; preds = %42, %30
  %36 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %37 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @ELFTC_ISDIGIT(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %44 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  br label %35

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %23
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %22, %13
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @cpp_demangle_read_sname(%struct.cpp_demangle_data*) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
