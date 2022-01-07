; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_resolve_sal_pc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_resolve_sal_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symtab_and_line = type { i64, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.blockvector = type { i32 }
%struct.block = type { i32 }
%struct.symbol = type { i32 }
%struct.minimal_symbol = type opaque

@.str = private unnamed_addr constant [25 x i8] c"No line %d in file \22%s\22.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resolve_sal_pc(%struct.symtab_and_line* %0) #0 {
  %2 = alloca %struct.symtab_and_line*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.blockvector*, align 8
  %5 = alloca %struct.block*, align 8
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.minimal_symbol*, align 8
  store %struct.symtab_and_line* %0, %struct.symtab_and_line** %2, align 8
  %9 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %10 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %15 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %20 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %23 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @find_line_pc(%struct.TYPE_3__* %21, i32 %24, i32* %3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %18
  %28 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %29 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %32 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %35)
  br label %37

37:                                               ; preds = %27, %18
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %40 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  br label %41

41:                                               ; preds = %37, %13, %1
  %42 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %43 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %100

46:                                               ; preds = %41
  %47 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %48 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %100

51:                                               ; preds = %46
  %52 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %53 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %56 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = call %struct.blockvector* @blockvector_for_pc_sect(i32 %54, i32 0, i32* %7, %struct.TYPE_3__* %57)
  store %struct.blockvector* %58, %struct.blockvector** %4, align 8
  %59 = load %struct.blockvector*, %struct.blockvector** %4, align 8
  %60 = icmp ne %struct.blockvector* %59, null
  br i1 %60, label %61, label %99

61:                                               ; preds = %51
  %62 = load %struct.blockvector*, %struct.blockvector** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector* %62, i32 %63)
  store %struct.block* %64, %struct.block** %5, align 8
  %65 = load %struct.block*, %struct.block** %5, align 8
  %66 = call %struct.symbol* @block_function(%struct.block* %65)
  store %struct.symbol* %66, %struct.symbol** %6, align 8
  %67 = load %struct.symbol*, %struct.symbol** %6, align 8
  %68 = icmp ne %struct.symbol* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %61
  %70 = load %struct.symbol*, %struct.symbol** %6, align 8
  %71 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %72 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @fixup_symbol_section(%struct.symbol* %70, i32 %75)
  %77 = load %struct.symbol*, %struct.symbol** %6, align 8
  %78 = call i8* @SYMBOL_BFD_SECTION(%struct.symbol* %77)
  %79 = ptrtoint i8* %78 to i64
  %80 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %81 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %98

82:                                               ; preds = %61
  %83 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %84 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.symbol* @lookup_minimal_symbol_by_pc(i32 %85)
  %87 = bitcast %struct.symbol* %86 to %struct.minimal_symbol*
  store %struct.minimal_symbol* %87, %struct.minimal_symbol** %8, align 8
  %88 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %89 = icmp ne %struct.minimal_symbol* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %82
  %91 = load %struct.minimal_symbol*, %struct.minimal_symbol** %8, align 8
  %92 = bitcast %struct.minimal_symbol* %91 to %struct.symbol*
  %93 = call i8* @SYMBOL_BFD_SECTION(%struct.symbol* %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = load %struct.symtab_and_line*, %struct.symtab_and_line** %2, align 8
  %96 = getelementptr inbounds %struct.symtab_and_line, %struct.symtab_and_line* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  br label %97

97:                                               ; preds = %90, %82
  br label %98

98:                                               ; preds = %97, %69
  br label %99

99:                                               ; preds = %98, %51
  br label %100

100:                                              ; preds = %99, %46, %41
  ret void
}

declare dso_local i32 @find_line_pc(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

declare dso_local %struct.blockvector* @blockvector_for_pc_sect(i32, i32, i32*, %struct.TYPE_3__*) #1

declare dso_local %struct.block* @BLOCKVECTOR_BLOCK(%struct.blockvector*, i32) #1

declare dso_local %struct.symbol* @block_function(%struct.block*) #1

declare dso_local i32 @fixup_symbol_section(%struct.symbol*, i32) #1

declare dso_local i8* @SYMBOL_BFD_SECTION(%struct.symbol*) #1

declare dso_local %struct.symbol* @lookup_minimal_symbol_by_pc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
