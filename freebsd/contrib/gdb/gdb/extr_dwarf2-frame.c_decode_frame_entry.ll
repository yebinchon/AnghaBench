; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_decode_frame_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_decode_frame_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comp_unit = type { i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@symfile_complaints = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Corrupt data in %s:%s; align 4 workaround apparently succeeded\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Corrupt data in %s:%s; align 8 workaround apparently succeeded\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Corrupt data in %s:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.comp_unit*, i8*, i32)* @decode_frame_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_frame_entry(%struct.comp_unit* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.comp_unit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.comp_unit* %0, %struct.comp_unit** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %3, %34, %48
  %12 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @decode_frame_entry_1(%struct.comp_unit* %12, i8* %13, i32 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %64

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  %21 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %22 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = ptrtoint i8* %20 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ult i32 %28, 1
  br i1 %29, label %30, label %41

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 3
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 3
  %37 = sub nsw i32 4, %36
  %38 = load i8*, i8** %5, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %5, align 8
  store i32 1, i32* %7, align 4
  br label %11

41:                                               ; preds = %30, %19
  %42 = load i32, i32* %7, align 4
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 7
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 7
  %51 = sub nsw i32 8, %50
  %52 = load i8*, i8** %5, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %5, align 8
  store i32 2, i32* %7, align 4
  br label %11

55:                                               ; preds = %44, %41
  store i32 3, i32* %7, align 4
  %56 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %57 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %60 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %58, i64 %62
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %55, %18
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %95 [
    i32 0, label %66
    i32 1, label %67
    i32 2, label %81
  ]

66:                                               ; preds = %64
  br label %109

67:                                               ; preds = %64
  %68 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %69 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %76 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %75, i32 0, i32 2
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %79)
  br label %109

81:                                               ; preds = %64
  %82 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %83 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %82, i32 0, i32 2
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %90 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %93)
  br label %109

95:                                               ; preds = %64
  %96 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %97 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.comp_unit*, %struct.comp_unit** %4, align 8
  %104 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @complaint(i32* @symfile_complaints, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %107)
  br label %109

109:                                              ; preds = %95, %81, %67, %66
  %110 = load i8*, i8** %8, align 8
  ret i8* %110
}

declare dso_local i8* @decode_frame_entry_1(%struct.comp_unit*, i8*, i32) #1

declare dso_local i32 @complaint(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
