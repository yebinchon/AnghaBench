; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_find_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_find_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attr_desc = type { i8*, %struct.attr_desc*, i64, i64, i64, i32*, i32 }

@alternative_name = common dso_local global i8* null, align 8
@MAX_ATTRS_INDEX = common dso_local global i32 0, align 4
@attrs = common dso_local global %struct.attr_desc** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.attr_desc* (i8**, i32)* @find_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.attr_desc* @find_attr(i8** %0, i32 %1) #0 {
  %3 = alloca %struct.attr_desc*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.attr_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = load i8*, i8** @alternative_name, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store %struct.attr_desc* null, %struct.attr_desc** %3, align 8
  br label %120

15:                                               ; preds = %2
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i32, i32* @MAX_ATTRS_INDEX, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.attr_desc**, %struct.attr_desc*** @attrs, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.attr_desc*, %struct.attr_desc** %23, i64 %25
  %27 = load %struct.attr_desc*, %struct.attr_desc** %26, align 8
  store %struct.attr_desc* %27, %struct.attr_desc** %6, align 8
  br label %28

28:                                               ; preds = %40, %15
  %29 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %30 = icmp ne %struct.attr_desc* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %34 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  store %struct.attr_desc* %38, %struct.attr_desc** %3, align 8
  br label %120

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %42 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %41, i32 0, i32 1
  %43 = load %struct.attr_desc*, %struct.attr_desc** %42, align 8
  store %struct.attr_desc* %43, %struct.attr_desc** %6, align 8
  br label %28

44:                                               ; preds = %28
  %45 = load %struct.attr_desc**, %struct.attr_desc*** @attrs, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.attr_desc*, %struct.attr_desc** %45, i64 %47
  %49 = load %struct.attr_desc*, %struct.attr_desc** %48, align 8
  store %struct.attr_desc* %49, %struct.attr_desc** %6, align 8
  br label %50

50:                                               ; preds = %79, %44
  %51 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %52 = icmp ne %struct.attr_desc* %51, null
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %59 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %57, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %53
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %68 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcmp(i8* %66, i8* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %65
  %73 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %74 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %4, align 8
  store i8* %75, i8** %76, align 8
  %77 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  store %struct.attr_desc* %77, %struct.attr_desc** %3, align 8
  br label %120

78:                                               ; preds = %65, %53
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %81 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %80, i32 0, i32 1
  %82 = load %struct.attr_desc*, %struct.attr_desc** %81, align 8
  store %struct.attr_desc* %82, %struct.attr_desc** %6, align 8
  br label %50

83:                                               ; preds = %50
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store %struct.attr_desc* null, %struct.attr_desc** %3, align 8
  br label %120

87:                                               ; preds = %83
  %88 = call %struct.attr_desc* @oballoc(i32 56)
  store %struct.attr_desc* %88, %struct.attr_desc** %6, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = call i8* @DEF_ATTR_STRING(i8* %89)
  %91 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %92 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %94 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %93, i32 0, i32 5
  store i32* null, i32** %94, align 8
  %95 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %96 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %95, i32 0, i32 6
  store i32 0, i32* %96, align 8
  %97 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %98 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %100 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %99, i32 0, i32 3
  store i64 0, i64* %100, align 8
  %101 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %102 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  %103 = load %struct.attr_desc**, %struct.attr_desc*** @attrs, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.attr_desc*, %struct.attr_desc** %103, i64 %105
  %107 = load %struct.attr_desc*, %struct.attr_desc** %106, align 8
  %108 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %109 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %108, i32 0, i32 1
  store %struct.attr_desc* %107, %struct.attr_desc** %109, align 8
  %110 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %111 = load %struct.attr_desc**, %struct.attr_desc*** @attrs, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.attr_desc*, %struct.attr_desc** %111, i64 %113
  store %struct.attr_desc* %110, %struct.attr_desc** %114, align 8
  %115 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  %116 = getelementptr inbounds %struct.attr_desc, %struct.attr_desc* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** %4, align 8
  store i8* %117, i8** %118, align 8
  %119 = load %struct.attr_desc*, %struct.attr_desc** %6, align 8
  store %struct.attr_desc* %119, %struct.attr_desc** %3, align 8
  br label %120

120:                                              ; preds = %87, %86, %72, %37, %14
  %121 = load %struct.attr_desc*, %struct.attr_desc** %3, align 8
  ret %struct.attr_desc* %121
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.attr_desc* @oballoc(i32) #1

declare dso_local i8* @DEF_ATTR_STRING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
