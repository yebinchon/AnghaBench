; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_core_xfer_partial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_corelow.c_core_xfer_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_ops = type { i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)* }
%struct.bfd_section = type { i32 }

@core_bfd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c".auxv\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Couldn't read NT_AUXV note in core file.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_ops*, i32, i8*, i8*, i8*, i32, i32)* @core_xfer_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_xfer_partial(%struct.target_ops* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.target_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bfd_section*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.target_ops* %0, %struct.target_ops** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %118 [
    i32 128, label %21
    i32 130, label %46
    i32 129, label %88
  ]

21:                                               ; preds = %7
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %26 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %25, i32 0, i32 0
  %27 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %26, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i8*, i8** %12, align 8
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %32 = call i32 %27(i32 %28, i8* %29, i32 %30, i32 0, i32* null, %struct.target_ops* %31)
  store i32 %32, i32* %8, align 4
  br label %140

33:                                               ; preds = %21
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %38 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %37, i32 0, i32 0
  %39 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %38, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i8*, i8** %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %44 = call i32 %39(i32 %40, i8* %41, i32 %42, i32 1, i32* null, %struct.target_ops* %43)
  store i32 %44, i32* %8, align 4
  br label %140

45:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %140

46:                                               ; preds = %7
  %47 = load i8*, i8** %12, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %87

49:                                               ; preds = %46
  %50 = load i32, i32* @core_bfd, align 4
  %51 = call %struct.bfd_section* @bfd_get_section_by_name(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.bfd_section* %51, %struct.bfd_section** %16, align 8
  %52 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %53 = icmp eq %struct.bfd_section* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 -1, i32* %8, align 4
  br label %140

55:                                               ; preds = %49
  %56 = load i32, i32* @core_bfd, align 4
  %57 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %58 = call i32 @bfd_section_size(i32 %56, %struct.bfd_section* %57)
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %140

63:                                               ; preds = %55
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %17, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %70, %63
  %73 = load i32, i32* %17, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* @core_bfd, align 4
  %77 = load %struct.bfd_section*, %struct.bfd_section** %16, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* %17, align 4
  %81 = call i32 @bfd_get_section_contents(i32 %76, %struct.bfd_section* %77, i8* %78, i32 %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = call i32 @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  br label %140

85:                                               ; preds = %75, %72
  %86 = load i32, i32* %17, align 4
  store i32 %86, i32* %8, align 4
  br label %140

87:                                               ; preds = %46
  store i32 -1, i32* %8, align 4
  br label %140

88:                                               ; preds = %7
  %89 = load i8*, i8** %11, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %19, align 4
  %94 = load i8*, i8** %12, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %105

96:                                               ; preds = %88
  %97 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %98 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %97, i32 0, i32 0
  %99 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %98, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* %15, align 4
  %103 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %104 = call i32 %99(i32 %100, i8* %101, i32 %102, i32 0, i32* null, %struct.target_ops* %103)
  store i32 %104, i32* %8, align 4
  br label %140

105:                                              ; preds = %88
  %106 = load i8*, i8** %13, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %105
  %109 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %110 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %109, i32 0, i32 0
  %111 = load i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)*, i32 (i32, i8*, i32, i32, i32*, %struct.target_ops*)** %110, align 8
  %112 = load i32, i32* %19, align 4
  %113 = load i8*, i8** %13, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %116 = call i32 %111(i32 %112, i8* %113, i32 %114, i32 1, i32* null, %struct.target_ops* %115)
  store i32 %116, i32* %8, align 4
  br label %140

117:                                              ; preds = %105
  store i32 -1, i32* %8, align 4
  br label %140

118:                                              ; preds = %7
  %119 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %120 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %119, i32 0, i32 1
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = icmp ne %struct.TYPE_2__* %121, null
  br i1 %122, label %123, label %139

123:                                              ; preds = %118
  %124 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %125 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i8*, i8*, i8*, i32, i32)** %127, align 8
  %129 = load %struct.target_ops*, %struct.target_ops** %9, align 8
  %130 = getelementptr inbounds %struct.target_ops, %struct.target_ops* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load i8*, i8** %11, align 8
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 %128(%struct.TYPE_2__* %131, i32 %132, i8* %133, i8* %134, i8* %135, i32 %136, i32 %137)
  store i32 %138, i32* %8, align 4
  br label %140

139:                                              ; preds = %118
  store i32 -1, i32* %8, align 4
  br label %140

140:                                              ; preds = %139, %123, %117, %108, %96, %87, %85, %83, %62, %54, %45, %36, %24
  %141 = load i32, i32* %8, align 4
  ret i32 %141
}

declare dso_local %struct.bfd_section* @bfd_get_section_by_name(i32, i8*) #1

declare dso_local i32 @bfd_section_size(i32, %struct.bfd_section*) #1

declare dso_local i32 @bfd_get_section_contents(i32, %struct.bfd_section*, i8*, i32, i32) #1

declare dso_local i32 @warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
