; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_slurp_dynamic_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_sunos.c_sunos_slurp_dynamic_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunos_dynamic_info = type { i64, i32*, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@bfd_error_no_symbols = common dso_local global i32 0, align 4
@EXTERNAL_NLIST_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sunos_slurp_dynamic_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunos_slurp_dynamic_symtab(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sunos_dynamic_info*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32* @obj_aout_dynamic_info(i32* %6)
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @sunos_read_dynamic_info(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %2, align 4
  br label %159

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @obj_aout_dynamic_info(i32* %17)
  %19 = bitcast i32* %18 to %struct.sunos_dynamic_info*
  store %struct.sunos_dynamic_info* %19, %struct.sunos_dynamic_info** %4, align 8
  %20 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %21 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @bfd_error_no_symbols, align 4
  %26 = call i32 @bfd_set_error(i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %159

28:                                               ; preds = %16
  %29 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %30 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %93

33:                                               ; preds = %28
  %34 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %35 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @EXTERNAL_NLIST_SIZE, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @bfd_alloc(i32* %40, i32 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %45 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %47 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %33
  %51 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %52 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @FALSE, align 4
  store i32 %56, i32* %2, align 4
  br label %159

57:                                               ; preds = %50, %33
  %58 = load i32*, i32** %3, align 8
  %59 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %60 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @SEEK_SET, align 4
  %65 = call i64 @bfd_seek(i32* %58, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %57
  %68 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %69 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = load i32, i32* %5, align 4
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @bfd_bread(i8* %71, i32 %72, i32* %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %67, %57
  %78 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %79 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %78, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %85 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @bfd_release(i32* %83, i32* %86)
  %88 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %89 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %88, i32 0, i32 3
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %82, %77
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %2, align 4
  br label %159

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92, %28
  %94 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %95 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %157

98:                                               ; preds = %93
  %99 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %100 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  store i32 %102, i32* %5, align 4
  %103 = load i32*, i32** %3, align 8
  %104 = load i32, i32* %5, align 4
  %105 = call i8* @bfd_alloc(i32* %103, i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %108 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %110 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %98
  %114 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %115 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %2, align 4
  br label %159

121:                                              ; preds = %113, %98
  %122 = load i32*, i32** %3, align 8
  %123 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %124 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @SEEK_SET, align 4
  %129 = call i64 @bfd_seek(i32* %122, i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %141, label %131

131:                                              ; preds = %121
  %132 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %133 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = bitcast i32* %134 to i8*
  %136 = load i32, i32* %5, align 4
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @bfd_bread(i8* %135, i32 %136, i32* %137)
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %131, %121
  %142 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %143 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %154

146:                                              ; preds = %141
  %147 = load i32*, i32** %3, align 8
  %148 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %149 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @bfd_release(i32* %147, i32* %150)
  %152 = load %struct.sunos_dynamic_info*, %struct.sunos_dynamic_info** %4, align 8
  %153 = getelementptr inbounds %struct.sunos_dynamic_info, %struct.sunos_dynamic_info* %152, i32 0, i32 1
  store i32* null, i32** %153, align 8
  br label %154

154:                                              ; preds = %146, %141
  %155 = load i32, i32* @FALSE, align 4
  store i32 %155, i32* %2, align 4
  br label %159

156:                                              ; preds = %131
  br label %157

157:                                              ; preds = %156, %93
  %158 = load i32, i32* @TRUE, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %154, %119, %90, %55, %24, %13
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32* @obj_aout_dynamic_info(i32*) #1

declare dso_local i32 @sunos_read_dynamic_info(i32*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i8* @bfd_alloc(i32*, i32) #1

declare dso_local i64 @bfd_seek(i32*, i32, i32) #1

declare dso_local i32 @bfd_bread(i8*, i32, i32*) #1

declare dso_local i32 @bfd_release(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
