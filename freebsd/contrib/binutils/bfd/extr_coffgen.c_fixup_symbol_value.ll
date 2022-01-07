; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_fixup_symbol_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_fixup_symbol_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i64, i64, i8* }
%struct.internal_syment = type { i64, i64, i8* }

@N_UNDEF = common dso_local global i8* null, align 8
@BSF_DEBUGGING = common dso_local global i32 0, align 4
@BSF_DEBUGGING_RELOC = common dso_local global i32 0, align 4
@C_STATLAB = common dso_local global i64 0, align 8
@N_ABS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*, %struct.internal_syment*)* @fixup_symbol_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_symbol_value(i32* %0, %struct.TYPE_9__* %1, %struct.internal_syment* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.internal_syment*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store %struct.internal_syment* %2, %struct.internal_syment** %6, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = call i64 @bfd_is_com_section(%struct.TYPE_10__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i8*, i8** @N_UNDEF, align 8
  %15 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %16 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %22 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  br label %137

23:                                               ; preds = %3
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BSF_DEBUGGING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %23
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @BSF_DEBUGGING_RELOC, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %45 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  br label %136

46:                                               ; preds = %31, %23
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = call i64 @bfd_is_und_section(%struct.TYPE_10__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i8*, i8** @N_UNDEF, align 8
  %55 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %56 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %58 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  br label %135

59:                                               ; preds = %46
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %123

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %75 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %79, %85
  %87 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %88 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @obj_pe(i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %122, label %92

92:                                               ; preds = %65
  %93 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %94 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @C_STATLAB, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  br label %116

107:                                              ; preds = %92
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  br label %116

116:                                              ; preds = %107, %98
  %117 = phi i64 [ %106, %98 ], [ %115, %107 ]
  %118 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %119 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %116, %65
  br label %134

123:                                              ; preds = %59
  %124 = call i32 @BFD_ASSERT(i32 0)
  %125 = load i8*, i8** @N_ABS, align 8
  %126 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %127 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.internal_syment*, %struct.internal_syment** %6, align 8
  %133 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %123, %122
  br label %135

135:                                              ; preds = %134, %53
  br label %136

136:                                              ; preds = %135, %39
  br label %137

137:                                              ; preds = %136, %13
  ret void
}

declare dso_local i64 @bfd_is_com_section(%struct.TYPE_10__*) #1

declare dso_local i64 @bfd_is_und_section(%struct.TYPE_10__*) #1

declare dso_local i32 @obj_pe(i32*) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
