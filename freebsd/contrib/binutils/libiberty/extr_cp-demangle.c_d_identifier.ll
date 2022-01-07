; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_identifier.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_identifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i8*, i32, i32 }

@DMGL_JAVA = common dso_local global i32 0, align 4
@ANONYMOUS_NAMESPACE_PREFIX_LEN = common dso_local global i32 0, align 4
@ANONYMOUS_NAMESPACE_PREFIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"(anonymous namespace)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i32)* @d_identifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_identifier(%struct.d_info* %0, i32 %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.d_info*, %struct.d_info** %4, align 8
  %9 = call i8* @d_str(%struct.d_info* %8)
  store i8* %9, i8** %6, align 8
  %10 = load %struct.d_info*, %struct.d_info** %4, align 8
  %11 = getelementptr inbounds %struct.d_info, %struct.d_info* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store %struct.demangle_component* null, %struct.demangle_component** %3, align 8
  br label %93

21:                                               ; preds = %2
  %22 = load %struct.d_info*, %struct.d_info** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @d_advance(%struct.d_info* %22, i32 %23)
  %25 = load %struct.d_info*, %struct.d_info** %4, align 8
  %26 = getelementptr inbounds %struct.d_info, %struct.d_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @DMGL_JAVA, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.d_info*, %struct.d_info** %4, align 8
  %33 = call signext i8 @d_peek_char(%struct.d_info* %32)
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 36
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.d_info*, %struct.d_info** %4, align 8
  %38 = call i32 @d_advance(%struct.d_info* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %31, %21
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @ANONYMOUS_NAMESPACE_PREFIX_LEN, align 4
  %42 = add nsw i32 %41, 2
  %43 = icmp sge i32 %40, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %39
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* @ANONYMOUS_NAMESPACE_PREFIX, align 4
  %47 = load i32, i32* @ANONYMOUS_NAMESPACE_PREFIX_LEN, align 4
  %48 = call i64 @memcmp(i8* %45, i32 %46, i32 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %88

50:                                               ; preds = %44
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @ANONYMOUS_NAMESPACE_PREFIX_LEN, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8* %54, i8** %7, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %69, label %59

59:                                               ; preds = %50
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 95
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load i8*, i8** %7, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 36
  br i1 %68, label %69, label %87

69:                                               ; preds = %64, %59, %50
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 1
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 78
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = sub i64 %77, 22
  %79 = load %struct.d_info*, %struct.d_info** %4, align 8
  %80 = getelementptr inbounds %struct.d_info, %struct.d_info* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 %82, %78
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %80, align 4
  %85 = load %struct.d_info*, %struct.d_info** %4, align 8
  %86 = call %struct.demangle_component* @d_make_name(%struct.d_info* %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 21)
  store %struct.demangle_component* %86, %struct.demangle_component** %3, align 8
  br label %93

87:                                               ; preds = %69, %64
  br label %88

88:                                               ; preds = %87, %44, %39
  %89 = load %struct.d_info*, %struct.d_info** %4, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call %struct.demangle_component* @d_make_name(%struct.d_info* %89, i8* %90, i32 %91)
  store %struct.demangle_component* %92, %struct.demangle_component** %3, align 8
  br label %93

93:                                               ; preds = %88, %75, %20
  %94 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %94
}

declare dso_local i8* @d_str(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local %struct.demangle_component* @d_make_name(%struct.d_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
