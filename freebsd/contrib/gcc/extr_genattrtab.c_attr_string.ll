; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_attr_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_attr_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_hash = type { i32, %struct.TYPE_2__, %struct.attr_hash* }
%struct.TYPE_2__ = type { i8* }

@attr_hash_table = common dso_local global %struct.attr_hash** null, align 8
@RTL_HASH_SIZE = common dso_local global i32 0, align 4
@hash_obstack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @attr_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @attr_string(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.attr_hash*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  %12 = mul nsw i32 %11, 613
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = add i32 %12, %16
  store i32 %17, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %32, %2
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 613
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = add i32 %24, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %8, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.attr_hash**, %struct.attr_hash*** @attr_hash_table, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @RTL_HASH_SIZE, align 4
  %45 = srem i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.attr_hash*, %struct.attr_hash** %42, i64 %46
  %48 = load %struct.attr_hash*, %struct.attr_hash** %47, align 8
  store %struct.attr_hash* %48, %struct.attr_hash** %6, align 8
  br label %49

49:                                               ; preds = %87, %41
  %50 = load %struct.attr_hash*, %struct.attr_hash** %6, align 8
  %51 = icmp ne %struct.attr_hash* %50, null
  br i1 %51, label %52, label %91

52:                                               ; preds = %49
  %53 = load %struct.attr_hash*, %struct.attr_hash** %6, align 8
  %54 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %86

59:                                               ; preds = %52
  %60 = load %struct.attr_hash*, %struct.attr_hash** %6, align 8
  %61 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %59
  %73 = load %struct.attr_hash*, %struct.attr_hash** %6, align 8
  %74 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i8*, i8** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @strncmp(i8* %76, i8* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %72
  %82 = load %struct.attr_hash*, %struct.attr_hash** %6, align 8
  %83 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %3, align 8
  br label %108

86:                                               ; preds = %72, %59, %52
  br label %87

87:                                               ; preds = %86
  %88 = load %struct.attr_hash*, %struct.attr_hash** %6, align 8
  %89 = getelementptr inbounds %struct.attr_hash, %struct.attr_hash* %88, i32 0, i32 2
  %90 = load %struct.attr_hash*, %struct.attr_hash** %89, align 8
  store %struct.attr_hash* %90, %struct.attr_hash** %6, align 8
  br label %49

91:                                               ; preds = %49
  %92 = load i32, i32* @hash_obstack, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  %95 = call i8* @obstack_alloc(i32 %92, i32 %94)
  store i8* %95, i8** %9, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @memcpy(i8* %96, i8* %97, i32 %98)
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 0, i8* %103, align 1
  %104 = load i32, i32* %7, align 4
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @attr_hash_add_string(i32 %104, i8* %105)
  %107 = load i8*, i8** %9, align 8
  store i8* %107, i8** %3, align 8
  br label %108

108:                                              ; preds = %91, %81
  %109 = load i8*, i8** %3, align 8
  ret i8* %109
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @obstack_alloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @attr_hash_add_string(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
