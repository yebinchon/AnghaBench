; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elf_create_symbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c_elf_create_symbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_symbuf_head = type { i64, i64, %struct.elf_symbuf_symbol* }
%struct.elf_symbuf_symbol = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@SHN_UNDEF = common dso_local global i64 0, align 8
@elf_sort_elf_symbol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.elf_symbuf_head* (i64, %struct.TYPE_6__*)* @elf_create_symbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.elf_symbuf_head* @elf_create_symbuf(i64 %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.elf_symbuf_head*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca %struct.elf_symbuf_symbol*, align 8
  %10 = alloca %struct.elf_symbuf_head*, align 8
  %11 = alloca %struct.elf_symbuf_head*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.TYPE_6__** @bfd_malloc2(i64 %14, i32 8)
  store %struct.TYPE_6__** %15, %struct.TYPE_6__*** %8, align 8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %17 = icmp eq %struct.TYPE_6__** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.elf_symbuf_head* null, %struct.elf_symbuf_head** %3, align 8
  br label %193

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__** %20, %struct.TYPE_6__*** %6, align 8
  store i64 0, i64* %12, align 8
  br label %21

21:                                               ; preds = %40, %19
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %21
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SHN_UNDEF, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %37, i32 1
  store %struct.TYPE_6__** %38, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %37, align 8
  br label %39

39:                                               ; preds = %33, %25
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %12, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %12, align 8
  br label %21

43:                                               ; preds = %21
  %44 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  store %struct.TYPE_6__** %44, %struct.TYPE_6__*** %7, align 8
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %46 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %47 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %48 = ptrtoint %struct.TYPE_6__** %46 to i64
  %49 = ptrtoint %struct.TYPE_6__** %47 to i64
  %50 = sub i64 %48, %49
  %51 = sdiv exact i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @elf_sort_elf_symbol, align 4
  %54 = call i32 @qsort(%struct.TYPE_6__** %45, i32 %52, i32 8, i32 %53)
  store i64 0, i64* %13, align 8
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %57 = icmp ugt %struct.TYPE_6__** %55, %56
  br i1 %57, label %58, label %87

58:                                               ; preds = %43
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__** %59, %struct.TYPE_6__*** %6, align 8
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %83, %58
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %64 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %64, i64 -1
  %66 = icmp ult %struct.TYPE_6__** %63, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %68, i64 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %72, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i64, i64* %13, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %13, align 8
  br label %82

82:                                               ; preds = %79, %67
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %84, i32 1
  store %struct.TYPE_6__** %85, %struct.TYPE_6__*** %6, align 8
  br label %62

86:                                               ; preds = %62
  br label %87

87:                                               ; preds = %86, %43
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, 1
  %90 = mul i64 %89, 24
  %91 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %92 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %93 = ptrtoint %struct.TYPE_6__** %91 to i64
  %94 = ptrtoint %struct.TYPE_6__** %92 to i64
  %95 = sub i64 %93, %94
  %96 = sdiv exact i64 %95, 8
  %97 = mul i64 %96, 12
  %98 = add i64 %90, %97
  %99 = call %struct.elf_symbuf_head* @bfd_malloc(i64 %98)
  store %struct.elf_symbuf_head* %99, %struct.elf_symbuf_head** %10, align 8
  %100 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %10, align 8
  %101 = icmp eq %struct.elf_symbuf_head* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %104 = call i32 @free(%struct.TYPE_6__** %103)
  store %struct.elf_symbuf_head* null, %struct.elf_symbuf_head** %3, align 8
  br label %193

105:                                              ; preds = %87
  %106 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %10, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %106, i64 %107
  %109 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %108, i64 1
  %110 = bitcast %struct.elf_symbuf_head* %109 to %struct.elf_symbuf_symbol*
  store %struct.elf_symbuf_symbol* %110, %struct.elf_symbuf_symbol** %9, align 8
  %111 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %10, align 8
  %112 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %111, i32 0, i32 2
  store %struct.elf_symbuf_symbol* null, %struct.elf_symbuf_symbol** %112, align 8
  %113 = load i64, i64* %13, align 8
  %114 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %10, align 8
  %115 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %10, align 8
  %117 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %10, align 8
  store %struct.elf_symbuf_head* %118, %struct.elf_symbuf_head** %11, align 8
  %119 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  store %struct.TYPE_6__** %119, %struct.TYPE_6__*** %6, align 8
  br label %120

120:                                              ; preds = %174, %105
  %121 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %122 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %123 = icmp ult %struct.TYPE_6__** %121, %122
  br i1 %123, label %124, label %179

124:                                              ; preds = %120
  %125 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %126 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %127 = icmp eq %struct.TYPE_6__** %125, %126
  br i1 %127, label %137, label %128

128:                                              ; preds = %124
  %129 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %11, align 8
  %130 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %131, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %128, %124
  %138 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %11, align 8
  %139 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %138, i32 1
  store %struct.elf_symbuf_head* %139, %struct.elf_symbuf_head** %11, align 8
  %140 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %9, align 8
  %141 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %11, align 8
  %142 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %141, i32 0, i32 2
  store %struct.elf_symbuf_symbol* %140, %struct.elf_symbuf_symbol** %142, align 8
  %143 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %11, align 8
  %144 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  %145 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %11, align 8
  %150 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %137, %128
  %152 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %9, align 8
  %157 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %9, align 8
  %163 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %9, align 8
  %169 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %11, align 8
  %171 = getelementptr inbounds %struct.elf_symbuf_head, %struct.elf_symbuf_head* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %171, align 8
  br label %174

174:                                              ; preds = %151
  %175 = load %struct.elf_symbuf_symbol*, %struct.elf_symbuf_symbol** %9, align 8
  %176 = getelementptr inbounds %struct.elf_symbuf_symbol, %struct.elf_symbuf_symbol* %175, i32 1
  store %struct.elf_symbuf_symbol* %176, %struct.elf_symbuf_symbol** %9, align 8
  %177 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %177, i32 1
  store %struct.TYPE_6__** %178, %struct.TYPE_6__*** %6, align 8
  br label %120

179:                                              ; preds = %120
  %180 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %11, align 8
  %181 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %10, align 8
  %182 = ptrtoint %struct.elf_symbuf_head* %180 to i64
  %183 = ptrtoint %struct.elf_symbuf_head* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 24
  %186 = load i64, i64* %13, align 8
  %187 = icmp eq i64 %185, %186
  %188 = zext i1 %187 to i32
  %189 = call i32 @BFD_ASSERT(i32 %188)
  %190 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %191 = call i32 @free(%struct.TYPE_6__** %190)
  %192 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %10, align 8
  store %struct.elf_symbuf_head* %192, %struct.elf_symbuf_head** %3, align 8
  br label %193

193:                                              ; preds = %179, %102, %18
  %194 = load %struct.elf_symbuf_head*, %struct.elf_symbuf_head** %3, align 8
  ret %struct.elf_symbuf_head* %194
}

declare dso_local %struct.TYPE_6__** @bfd_malloc2(i64, i32) #1

declare dso_local i32 @qsort(%struct.TYPE_6__**, i32, i32, i32) #1

declare dso_local %struct.elf_symbuf_head* @bfd_malloc(i64) #1

declare dso_local i32 @free(%struct.TYPE_6__**) #1

declare dso_local i32 @BFD_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
