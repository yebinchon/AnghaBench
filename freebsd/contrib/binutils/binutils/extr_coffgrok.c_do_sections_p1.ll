; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_sections_p1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_coffgrok.c_do_sections_p1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64, %struct.TYPE_9__* }
%struct.coff_ofile = type { %struct.coff_section*, i64 }
%struct.coff_section = type { i8*, i32, i32, i32, i64, i64, %struct.TYPE_9__*, %struct.coff_reloc*, i64 }
%struct.coff_reloc = type { i32 }

@abfd = common dso_local global %struct.TYPE_10__* null, align 8
@syms = common dso_local global i32 0, align 4
@SEC_CODE = common dso_local global i32 0, align 4
@SEC_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c".bss\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"ABSOLUTE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_ofile*)* @do_sections_p1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sections_p1(%struct.coff_ofile* %0) #0 {
  %2 = alloca %struct.coff_ofile*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.coff_section*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  store %struct.coff_ofile* %0, %struct.coff_ofile** %2, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @abfd, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i64 @xcalloc(i64 %13, i32 64)
  %15 = inttoptr i64 %14 to %struct.coff_section*
  store %struct.coff_section* %15, %struct.coff_section** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @abfd, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  %20 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %21 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.coff_section*, %struct.coff_section** %5, align 8
  %23 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %24 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %23, i32 0, i32 0
  store %struct.coff_section* %22, %struct.coff_section** %24, align 8
  store i32 0, i32* %4, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** @abfd, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %3, align 8
  br label %28

28:                                               ; preds = %170, %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = icmp ne %struct.TYPE_9__* %29, null
  br i1 %30, label %31, label %176

31:                                               ; preds = %28
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %7, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @abfd, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = call i64 @bfd_get_reloc_upper_bound(%struct.TYPE_10__* %35, %struct.TYPE_9__* %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** @abfd, align 8
  %42 = call i32 @bfd_get_filename(%struct.TYPE_10__* %41)
  %43 = call i32 @bfd_fatal(i32 %42)
  br label %44

44:                                               ; preds = %40, %31
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %170

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @xmalloc(i64 %49)
  %51 = inttoptr i64 %50 to i32**
  store i32** %51, i32*** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @abfd, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load i32**, i32*** %8, align 8
  %55 = load i32, i32* @syms, align 4
  %56 = call i64 @bfd_canonicalize_reloc(%struct.TYPE_10__* %52, %struct.TYPE_9__* %53, i32** %54, i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %48
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @abfd, align 8
  %61 = call i32 @bfd_get_filename(%struct.TYPE_10__* %60)
  %62 = call i32 @bfd_fatal(i32 %61)
  br label %63

63:                                               ; preds = %59, %48
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %69 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %68, i32 0, i32 0
  %70 = load %struct.coff_section*, %struct.coff_section** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %70, i64 %72
  %74 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %73, i32 0, i32 0
  store i8* %67, i8** %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @SEC_CODE, align 4
  %79 = and i32 %77, %78
  %80 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %81 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %80, i32 0, i32 0
  %82 = load %struct.coff_section*, %struct.coff_section** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %82, i64 %84
  %86 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %85, i32 0, i32 1
  store i32 %79, i32* %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SEC_DATA, align 4
  %91 = and i32 %89, %90
  %92 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %93 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %92, i32 0, i32 0
  %94 = load %struct.coff_section*, %struct.coff_section** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %94, i64 %96
  %98 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %97, i32 0, i32 2
  store i32 %91, i32* %98, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @strcmp(i64 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %63
  %105 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %106 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %105, i32 0, i32 0
  %107 = load %struct.coff_section*, %struct.coff_section** %106, align 8
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %107, i64 %109
  %111 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %110, i32 0, i32 2
  store i32 1, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %63
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %117 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %116, i32 0, i32 0
  %118 = load %struct.coff_section*, %struct.coff_section** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %118, i64 %120
  %122 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %121, i32 0, i32 5
  store i64 %115, i64* %122, align 8
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %124 = call i64 @bfd_get_section_size(%struct.TYPE_9__* %123)
  %125 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %126 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %125, i32 0, i32 0
  %127 = load %struct.coff_section*, %struct.coff_section** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %127, i64 %129
  %131 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %130, i32 0, i32 4
  store i64 %124, i64* %131, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %134 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %133, i32 0, i32 0
  %135 = load %struct.coff_section*, %struct.coff_section** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %135, i64 %137
  %139 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %138, i32 0, i32 3
  store i32 %132, i32* %139, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %144 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %143, i32 0, i32 0
  %145 = load %struct.coff_section*, %struct.coff_section** %144, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %145, i64 %147
  %149 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %148, i32 0, i32 8
  store i64 %142, i64* %149, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @xcalloc(i64 %152, i32 4)
  %154 = inttoptr i64 %153 to %struct.coff_reloc*
  %155 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %156 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %155, i32 0, i32 0
  %157 = load %struct.coff_section*, %struct.coff_section** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %157, i64 %159
  %161 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %160, i32 0, i32 7
  store %struct.coff_reloc* %154, %struct.coff_reloc** %161, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %163 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %164 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %163, i32 0, i32 0
  %165 = load %struct.coff_section*, %struct.coff_section** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %165, i64 %167
  %169 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %168, i32 0, i32 6
  store %struct.TYPE_9__* %162, %struct.TYPE_9__** %169, align 8
  br label %170

170:                                              ; preds = %112, %47
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 5
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  store %struct.TYPE_9__* %173, %struct.TYPE_9__** %3, align 8
  %174 = load i32, i32* %4, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %4, align 4
  br label %28

176:                                              ; preds = %28
  %177 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %178 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %177, i32 0, i32 0
  %179 = load %struct.coff_section*, %struct.coff_section** %178, align 8
  %180 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %179, i64 0
  %181 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %180, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %181, align 8
  %182 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %183 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %182, i32 0, i32 0
  %184 = load %struct.coff_section*, %struct.coff_section** %183, align 8
  %185 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %184, i64 0
  %186 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %185, i32 0, i32 1
  store i32 0, i32* %186, align 8
  %187 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %188 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %187, i32 0, i32 0
  %189 = load %struct.coff_section*, %struct.coff_section** %188, align 8
  %190 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %189, i64 0
  %191 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %190, i32 0, i32 2
  store i32 0, i32* %191, align 4
  %192 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %193 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %192, i32 0, i32 0
  %194 = load %struct.coff_section*, %struct.coff_section** %193, align 8
  %195 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %194, i64 0
  %196 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %195, i32 0, i32 5
  store i64 0, i64* %196, align 8
  %197 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %198 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %197, i32 0, i32 0
  %199 = load %struct.coff_section*, %struct.coff_section** %198, align 8
  %200 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %199, i64 0
  %201 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %200, i32 0, i32 4
  store i64 0, i64* %201, align 8
  %202 = load %struct.coff_ofile*, %struct.coff_ofile** %2, align 8
  %203 = getelementptr inbounds %struct.coff_ofile, %struct.coff_ofile* %202, i32 0, i32 0
  %204 = load %struct.coff_section*, %struct.coff_section** %203, align 8
  %205 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %204, i64 0
  %206 = getelementptr inbounds %struct.coff_section, %struct.coff_section* %205, i32 0, i32 3
  store i32 0, i32* %206, align 8
  ret void
}

declare dso_local i64 @xcalloc(i64, i32) #1

declare dso_local i64 @bfd_get_reloc_upper_bound(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(%struct.TYPE_10__*) #1

declare dso_local i64 @xmalloc(i64) #1

declare dso_local i64 @bfd_canonicalize_reloc(%struct.TYPE_10__*, %struct.TYPE_9__*, i32**, i32) #1

declare dso_local i64 @strcmp(i64, i8*) #1

declare dso_local i64 @bfd_get_section_size(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
