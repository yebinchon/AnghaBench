; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_ILF_object_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_peicode.h_pe_ILF_object_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [70 x i8] c"%B: Unrecognised machine type (0x%x) in Import Library Format archive\00", align 1
@bfd_error_malformed_archive = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"%B: Recognised but unhandled machine type (0x%x) in Import Library Format archive\00", align 1
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"%B: size field is zero in Import Library Format header\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%B: string not null terminated in ILF object file.\00", align 1
@AMD64MAGIC = common dso_local global i32 0, align 4
@ARMPEMAGIC = common dso_local global i32 0, align 4
@I386MAGIC = common dso_local global i32 0, align 4
@MC68MAGIC = common dso_local global i32 0, align 4
@MIPS_ARCH_MAGIC_WINCE = common dso_local global i32 0, align 4
@SH_ARCH_MAGIC_WINCE = common dso_local global i32 0, align 4
@THUMBPEMAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*)* @pe_ILF_object_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pe_ILF_object_p(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca [16 x i64], align 16
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %13 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = call i32 @bfd_bread(i64* %13, i32 16, %struct.TYPE_10__* %14)
  %16 = icmp ne i32 %15, 16
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %149

18:                                               ; preds = %1
  %19 = getelementptr inbounds [16 x i64], [16 x i64]* %4, i64 0, i64 0
  store i64* %19, i64** %5, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 2
  store i64* %21, i64** %5, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = load i64*, i64** %5, align 8
  %24 = call i32 @H_GET_16(%struct.TYPE_10__* %22, i64* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 2
  store i64* %26, i64** %5, align 8
  store i32 0, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %37 [
    i32 128, label %28
    i32 145, label %28
    i32 144, label %28
    i32 140, label %28
    i32 141, label %29
    i32 143, label %30
    i32 139, label %31
    i32 133, label %32
    i32 132, label %32
    i32 134, label %32
    i32 138, label %32
    i32 137, label %32
    i32 136, label %32
    i32 131, label %33
    i32 130, label %33
    i32 142, label %34
    i32 129, label %35
    i32 135, label %36
  ]

28:                                               ; preds = %18, %18, %18, %18
  br label %44

29:                                               ; preds = %18
  br label %44

30:                                               ; preds = %18
  br label %44

31:                                               ; preds = %18
  br label %44

32:                                               ; preds = %18, %18, %18, %18, %18, %18
  br label %44

33:                                               ; preds = %18, %18
  br label %44

34:                                               ; preds = %18
  br label %44

35:                                               ; preds = %18
  br label %44

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %18, %36
  %38 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32, %struct.TYPE_10__*, ...) @_bfd_error_handler(i32 %38, %struct.TYPE_10__* %39, i32 %40)
  %42 = load i32, i32* @bfd_error_malformed_archive, align 4
  %43 = call i32 @bfd_set_error(i32 %42)
  store i32* null, i32** %2, align 8
  br label %149

44:                                               ; preds = %35, %34, %33, %32, %31, %30, %29, %28
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = call i32 @_(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 (i32, %struct.TYPE_10__*, ...) @_bfd_error_handler(i32 %48, %struct.TYPE_10__* %49, i32 %50)
  %52 = load i32, i32* @bfd_error_wrong_format, align 4
  %53 = call i32 @bfd_set_error(i32 %52)
  store i32* null, i32** %2, align 8
  br label %149

54:                                               ; preds = %44
  %55 = load i64*, i64** %5, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 4
  store i64* %56, i64** %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = load i64*, i64** %5, align 8
  %59 = call i32 @H_GET_32(%struct.TYPE_10__* %57, i64* %58)
  store i32 %59, i32* %9, align 4
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 4
  store i64* %61, i64** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %54
  %65 = call i32 @_(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %67 = call i32 (i32, %struct.TYPE_10__*, ...) @_bfd_error_handler(i32 %65, %struct.TYPE_10__* %66)
  %68 = load i32, i32* @bfd_error_malformed_archive, align 4
  %69 = call i32 @bfd_set_error(i32 %68)
  store i32* null, i32** %2, align 8
  br label %149

70:                                               ; preds = %54
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = load i64*, i64** %5, align 8
  %73 = call i32 @H_GET_16(%struct.TYPE_10__* %71, i64* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i64*, i64** %5, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  store i64* %75, i64** %5, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = load i64*, i64** %5, align 8
  %78 = call i32 @H_GET_16(%struct.TYPE_10__* %76, i64* %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i64* @bfd_alloc(%struct.TYPE_10__* %79, i32 %80)
  store i64* %81, i64** %5, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = icmp eq i64* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  store i32* null, i32** %2, align 8
  br label %149

85:                                               ; preds = %70
  %86 = load i64*, i64** %5, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %89 = call i32 @bfd_bread(i64* %86, i32 %87, %struct.TYPE_10__* %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = load i64*, i64** %5, align 8
  %95 = call i32 @bfd_release(%struct.TYPE_10__* %93, i64* %94)
  store i32* null, i32** %2, align 8
  br label %149

96:                                               ; preds = %85
  %97 = load i64*, i64** %5, align 8
  %98 = bitcast i64* %97 to i8*
  store i8* %98, i8** %6, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  store i8* %104, i8** %7, align 8
  %105 = load i64*, i64** %5, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %96
  %113 = load i8*, i8** %7, align 8
  %114 = bitcast i8* %113 to i64*
  %115 = load i64*, i64** %5, align 8
  %116 = ptrtoint i64* %114 to i64
  %117 = ptrtoint i64* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 8
  %120 = trunc i64 %119 to i32
  %121 = load i32, i32* %9, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %112, %96
  %124 = call i32 @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %126 = call i32 (i32, %struct.TYPE_10__*, ...) @_bfd_error_handler(i32 %124, %struct.TYPE_10__* %125)
  %127 = load i32, i32* @bfd_error_malformed_archive, align 4
  %128 = call i32 @bfd_set_error(i32 %127)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = load i64*, i64** %5, align 8
  %131 = call i32 @bfd_release(%struct.TYPE_10__* %129, i64* %130)
  store i32* null, i32** %2, align 8
  br label %149

132:                                              ; preds = %112
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i8*, i8** %6, align 8
  %136 = load i8*, i8** %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @pe_ILF_build_a_bfd(%struct.TYPE_10__* %133, i32 %134, i8* %135, i8* %136, i32 %137, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %132
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %143 = load i64*, i64** %5, align 8
  %144 = call i32 @bfd_release(%struct.TYPE_10__* %142, i64* %143)
  store i32* null, i32** %2, align 8
  br label %149

145:                                              ; preds = %132
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  store i32* %148, i32** %2, align 8
  br label %149

149:                                              ; preds = %145, %141, %123, %92, %84, %64, %47, %37, %17
  %150 = load i32*, i32** %2, align 8
  ret i32* %150
}

declare dso_local i32 @bfd_bread(i64*, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @H_GET_16(%struct.TYPE_10__*, i64*) #1

declare dso_local i32 @_bfd_error_handler(i32, %struct.TYPE_10__*, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @H_GET_32(%struct.TYPE_10__*, i64*) #1

declare dso_local i64* @bfd_alloc(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @bfd_release(%struct.TYPE_10__*, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pe_ILF_build_a_bfd(%struct.TYPE_10__*, i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
