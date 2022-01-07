; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_read_one_sym.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_coffread.c_read_one_sym.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_symbol = type { i32, i32, i8*, i32, i32, i32, i32 }
%struct.internal_syment = type { i32, i32, i64, i32, i32 }
%union.internal_auxent = type { i32 }

@symnum = common dso_local global i32 0, align 4
@temp_sym = common dso_local global i32 0, align 4
@local_symesz = common dso_local global i32 0, align 4
@nlist_bfd_global = common dso_local global i32 0, align 4
@symfile_bfd = common dso_local global i32 0, align 4
@temp_aux = common dso_local global i32 0, align 4
@local_auxesz = common dso_local global i32 0, align 4
@pe_file = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coff_symbol*, %struct.internal_syment*, %union.internal_auxent*)* @read_one_sym to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_one_sym(%struct.coff_symbol* %0, %struct.internal_syment* %1, %union.internal_auxent* %2) #0 {
  %4 = alloca %struct.coff_symbol*, align 8
  %5 = alloca %struct.internal_syment*, align 8
  %6 = alloca %union.internal_auxent*, align 8
  %7 = alloca i32, align 4
  store %struct.coff_symbol* %0, %struct.coff_symbol** %4, align 8
  store %struct.internal_syment* %1, %struct.internal_syment** %5, align 8
  store %union.internal_auxent* %2, %union.internal_auxent** %6, align 8
  %8 = load i32, i32* @symnum, align 4
  %9 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %10 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @temp_sym, align 4
  %12 = load i32, i32* @local_symesz, align 4
  %13 = load i32, i32* @nlist_bfd_global, align 4
  %14 = call i32 @bfd_bread(i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* @symfile_bfd, align 4
  %16 = load i32, i32* @temp_sym, align 4
  %17 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %18 = bitcast %struct.internal_syment* %17 to i8*
  %19 = call i32 @bfd_coff_swap_sym_in(i32 %15, i32 %16, i8* %18)
  %20 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %21 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 255
  %24 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %25 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %27 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 1
  br i1 %29, label %30, label %64

30:                                               ; preds = %3
  %31 = load i32, i32* @temp_aux, align 4
  %32 = load i32, i32* @local_auxesz, align 4
  %33 = load i32, i32* @nlist_bfd_global, align 4
  %34 = call i32 @bfd_bread(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* @symfile_bfd, align 4
  %36 = load i32, i32* @temp_aux, align 4
  %37 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %38 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %41 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %44 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %union.internal_auxent*, %union.internal_auxent** %6, align 8
  %47 = bitcast %union.internal_auxent* %46 to i8*
  %48 = call i32 @bfd_coff_swap_aux_in(i32 %35, i32 %36, i64 %39, i32 %42, i32 0, i32 %45, i8* %47)
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %60, %30
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %52 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* @temp_aux, align 4
  %57 = load i32, i32* @local_auxesz, align 4
  %58 = load i32, i32* @nlist_bfd_global, align 4
  %59 = call i32 @bfd_bread(i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %49

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63, %3
  %65 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %66 = call i8* @getsymname(%struct.internal_syment* %65)
  %67 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %68 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %70 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %73 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %75 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 255
  %78 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %79 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 8
  %80 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %81 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %84 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 4
  %85 = load %struct.internal_syment*, %struct.internal_syment** %5, align 8
  %86 = getelementptr inbounds %struct.internal_syment, %struct.internal_syment* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = trunc i64 %87 to i32
  %89 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %90 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %92 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @SDB_TYPE(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %64
  %97 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %98 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %97, i32 0, i32 4
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %64
  %100 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %101 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 1, %102
  %104 = load i32, i32* @symnum, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* @symnum, align 4
  %106 = load i64, i64* @pe_file, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %99
  %109 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %110 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %126 [
    i32 138, label %112
    i32 132, label %112
    i32 131, label %112
    i32 134, label %112
    i32 135, label %112
    i32 133, label %112
    i32 129, label %112
    i32 128, label %112
    i32 136, label %112
    i32 130, label %112
    i32 140, label %112
    i32 137, label %112
    i32 139, label %112
  ]

112:                                              ; preds = %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108, %108
  %113 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %114 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %119 = load i32, i32* @symfile_bfd, align 4
  %120 = call i32 @cs_section_address(%struct.coff_symbol* %118, i32 %119)
  %121 = load %struct.coff_symbol*, %struct.coff_symbol** %4, align 8
  %122 = getelementptr inbounds %struct.coff_symbol, %struct.coff_symbol* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %117, %112
  br label %126

126:                                              ; preds = %108, %125
  br label %127

127:                                              ; preds = %126, %99
  ret void
}

declare dso_local i32 @bfd_bread(i32, i32, i32) #1

declare dso_local i32 @bfd_coff_swap_sym_in(i32, i32, i8*) #1

declare dso_local i32 @bfd_coff_swap_aux_in(i32, i32, i64, i32, i32, i32, i8*) #1

declare dso_local i8* @getsymname(%struct.internal_syment*) #1

declare dso_local i32 @SDB_TYPE(i32) #1

declare dso_local i32 @cs_section_address(%struct.coff_symbol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
