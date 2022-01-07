; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_initiate_presence_absence_pattern_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genautomata.c_initiate_presence_absence_pattern_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }

@irp = common dso_local global i32 0, align 4
@description = common dso_local global %struct.TYPE_6__* null, align 8
@unit_presence_set_table = common dso_local global i8** null, align 8
@unit_final_presence_set_table = common dso_local global i8** null, align 8
@unit_absence_set_table = common dso_local global i8** null, align 8
@unit_final_absence_set_table = common dso_local global i8** null, align 8
@dm_unit = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @initiate_presence_absence_pattern_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initiate_presence_absence_pattern_sets() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = sext i32 %5 to i64
  %7 = mul i64 %6, 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @obstack_blank(i32* @irp, i32 %8)
  %10 = call i64 @obstack_base(i32* @irp)
  %11 = inttoptr i64 %10 to i8**
  store i8** %11, i8*** @unit_presence_set_table, align 8
  %12 = call i32 @obstack_finish(i32* @irp)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @obstack_blank(i32* @irp, i32 %18)
  %20 = call i64 @obstack_base(i32* @irp)
  %21 = inttoptr i64 %20 to i8**
  store i8** %21, i8*** @unit_final_presence_set_table, align 8
  %22 = call i32 @obstack_finish(i32* @irp)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @obstack_blank(i32* @irp, i32 %28)
  %30 = call i64 @obstack_base(i32* @irp)
  %31 = inttoptr i64 %30 to i8**
  store i8** %31, i8*** @unit_absence_set_table, align 8
  %32 = call i32 @obstack_finish(i32* @irp)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 @obstack_blank(i32* @irp, i32 %38)
  %40 = call i64 @obstack_base(i32* @irp)
  %41 = inttoptr i64 %40 to i8**
  store i8** %41, i8*** @unit_final_absence_set_table, align 8
  %42 = call i32 @obstack_finish(i32* @irp)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %108, %0
  %44 = load i32, i32* %2, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %111

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @description, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %1, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @dm_unit, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %107

62:                                               ; preds = %49
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %64 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @form_reserv_sets_list(i32 %66)
  %68 = load i8**, i8*** @unit_presence_set_table, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %70 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %69)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i8*, i8** %68, i64 %72
  store i8* %67, i8** %73, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %75 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %74)
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @form_reserv_sets_list(i32 %77)
  %79 = load i8**, i8*** @unit_final_presence_set_table, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %81 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %80)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8*, i8** %79, i64 %83
  store i8* %78, i8** %84, align 8
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %86 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %85)
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @form_reserv_sets_list(i32 %88)
  %90 = load i8**, i8*** @unit_absence_set_table, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %92 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %91)
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i8*, i8** %90, i64 %94
  store i8* %89, i8** %95, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %97 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %96)
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @form_reserv_sets_list(i32 %99)
  %101 = load i8**, i8*** @unit_final_absence_set_table, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %103 = call %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__* %102)
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i8*, i8** %101, i64 %105
  store i8* %100, i8** %106, align 8
  br label %107

107:                                              ; preds = %62, %49
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %2, align 4
  br label %43

111:                                              ; preds = %43
  ret void
}

declare dso_local i32 @obstack_blank(i32*, i32) #1

declare dso_local i64 @obstack_base(i32*) #1

declare dso_local i32 @obstack_finish(i32*) #1

declare dso_local i8* @form_reserv_sets_list(i32) #1

declare dso_local %struct.TYPE_7__* @DECL_UNIT(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
