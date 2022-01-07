; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_toc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf64-ppc.c_ppc64_elf_toc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".toc\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".tocbss\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@SEC_ALLOC = common dso_local global i32 0, align 4
@SEC_SMALL_DATA = common dso_local global i32 0, align 4
@SEC_READONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ppc64_elf_toc(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = call %struct.TYPE_9__* @bfd_get_section_by_name(%struct.TYPE_8__* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* %6, %struct.TYPE_9__** %3, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = icmp eq %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = call %struct.TYPE_9__* @bfd_get_section_by_name(%struct.TYPE_8__* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %17 = call %struct.TYPE_9__* @bfd_get_section_by_name(%struct.TYPE_8__* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %3, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = icmp eq %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %23 = call %struct.TYPE_9__* @bfd_get_section_by_name(%struct.TYPE_8__* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %3, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = icmp eq %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %136

27:                                               ; preds = %24
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %3, align 8
  br label %31

31:                                               ; preds = %50, %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = icmp ne %struct.TYPE_9__* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @SEC_ALLOC, align 4
  %39 = load i32, i32* @SEC_SMALL_DATA, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SEC_READONLY, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = load i32, i32* @SEC_ALLOC, align 4
  %45 = load i32, i32* @SEC_SMALL_DATA, align 4
  %46 = or i32 %44, %45
  %47 = icmp eq i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  br label %54

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %3, align 8
  br label %31

54:                                               ; preds = %48, %31
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = icmp eq %struct.TYPE_9__* %55, null
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  store %struct.TYPE_9__* %60, %struct.TYPE_9__** %3, align 8
  br label %61

61:                                               ; preds = %78, %57
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %82

64:                                               ; preds = %61
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SEC_ALLOC, align 4
  %69 = load i32, i32* @SEC_SMALL_DATA, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = load i32, i32* @SEC_ALLOC, align 4
  %73 = load i32, i32* @SEC_SMALL_DATA, align 4
  %74 = or i32 %72, %73
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  br label %82

77:                                               ; preds = %64
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 3
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %3, align 8
  br label %61

82:                                               ; preds = %76, %61
  br label %83

83:                                               ; preds = %82, %54
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %85 = icmp eq %struct.TYPE_9__* %84, null
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  store %struct.TYPE_9__* %89, %struct.TYPE_9__** %3, align 8
  br label %90

90:                                               ; preds = %105, %86
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %92 = icmp ne %struct.TYPE_9__* %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SEC_ALLOC, align 4
  %98 = load i32, i32* @SEC_READONLY, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %96, %99
  %101 = load i32, i32* @SEC_ALLOC, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %109

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  store %struct.TYPE_9__* %108, %struct.TYPE_9__** %3, align 8
  br label %90

109:                                              ; preds = %103, %90
  br label %110

110:                                              ; preds = %109, %83
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %112 = icmp eq %struct.TYPE_9__* %111, null
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  store %struct.TYPE_9__* %116, %struct.TYPE_9__** %3, align 8
  br label %117

117:                                              ; preds = %130, %113
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %119 = icmp ne %struct.TYPE_9__* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %117
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @SEC_ALLOC, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* @SEC_ALLOC, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %134

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  store %struct.TYPE_9__* %133, %struct.TYPE_9__** %3, align 8
  br label %117

134:                                              ; preds = %128, %117
  br label %135

135:                                              ; preds = %134, %110
  br label %136

136:                                              ; preds = %135, %24
  store i64 0, i64* %4, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %138 = icmp ne %struct.TYPE_9__* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %136
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  store i64 %148, i64* %4, align 8
  br label %149

149:                                              ; preds = %139, %136
  %150 = load i64, i64* %4, align 8
  ret i64 %150
}

declare dso_local %struct.TYPE_9__* @bfd_get_section_by_name(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
