; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libelftc/extr_libelftc_dem_arm.c_read_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_data = type { i8*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.demangle_data*)* @read_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_array(%struct.demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.demangle_data* %0, %struct.demangle_data** %3, align 8
  %6 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %7 = icmp eq %struct.demangle_data* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %10 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %93

14:                                               ; preds = %8
  %15 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %16 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %22

22:                                               ; preds = %34, %14
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %93

28:                                               ; preds = %22
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @ELFTC_ISDIGIT(i8 signext %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %37

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %5, align 8
  br label %22

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 95
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %93

43:                                               ; preds = %37
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %46 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = ptrtoint i8* %44 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ugt i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %56 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %55, i32 0, i32 2
  %57 = call i32 @dest_cstring(%struct.TYPE_3__* %56)
  %58 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %59 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %58, i32 0, i32 2
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, 3
  %62 = call i32 @init_cstring(%struct.TYPE_3__* %59, i64 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %93

65:                                               ; preds = %43
  %66 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %67 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %72 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @strncpy(i8* %70, i8* %73, i64 %74)
  %76 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %77 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8 91, i8* %79, align 1
  %80 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %81 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8 93, i8* %86, align 1
  %87 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %88 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load %struct.demangle_data*, %struct.demangle_data** %3, align 8
  %92 = getelementptr inbounds %struct.demangle_data, %struct.demangle_data* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %65, %64, %42, %27, %13
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

declare dso_local i32 @dest_cstring(%struct.TYPE_3__*) #1

declare dso_local i32 @init_cstring(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
