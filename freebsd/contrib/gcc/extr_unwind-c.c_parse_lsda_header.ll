; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-c.c_parse_lsda_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_unwind-c.c_parse_lsda_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Unwind_Context = type { i32 }
%struct.TYPE_3__ = type { i8, i8*, i8*, i32, i32, i32 }

@DW_EH_PE_omit = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct._Unwind_Context*, i8*, %struct.TYPE_3__*)* @parse_lsda_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_lsda_header(%struct._Unwind_Context* %0, i8* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca %struct._Unwind_Context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct._Unwind_Context* %0, %struct._Unwind_Context** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %9 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %10 = icmp ne %struct._Unwind_Context* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %13 = call i32 @_Unwind_GetRegionStart(%struct._Unwind_Context* %12)
  br label %15

14:                                               ; preds = %3
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ]
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  %21 = load i8, i8* %19, align 1
  store i8 %21, i8* %8, align 1
  %22 = load i8, i8* %8, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @DW_EH_PE_omit, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %15
  %28 = load %struct._Unwind_Context*, %struct._Unwind_Context** %4, align 8
  %29 = load i8, i8* %8, align 1
  %30 = load i8*, i8** %5, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 5
  %33 = call i8* @read_encoded_value(%struct._Unwind_Context* %28, i8 zeroext %29, i8* %30, i32* %32)
  store i8* %33, i8** %5, align 8
  br label %40

34:                                               ; preds = %15
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  %43 = load i8, i8* %41, align 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8 %43, i8* %45, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 8
  %49 = zext i8 %48 to i32
  %50 = load i8, i8* @DW_EH_PE_omit, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %40
  %54 = load i8*, i8** %5, align 8
  %55 = call i8* @read_uleb128(i8* %54, i32* %7)
  store i8* %55, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  br label %65

62:                                               ; preds = %40
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i8* null, i8** %64, align 8
  br label %65

65:                                               ; preds = %62, %53
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i8* @read_uleb128(i8* %72, i32* %7)
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  %80 = load i8*, i8** %5, align 8
  ret i8* %80
}

declare dso_local i32 @_Unwind_GetRegionStart(%struct._Unwind_Context*) #1

declare dso_local i8* @read_encoded_value(%struct._Unwind_Context*, i8 zeroext, i8*, i32*) #1

declare dso_local i8* @read_uleb128(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
