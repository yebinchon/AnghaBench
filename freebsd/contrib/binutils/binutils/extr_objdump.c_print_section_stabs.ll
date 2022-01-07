; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_print_section_stabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_print_section_stabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stabs = common dso_local global i32* null, align 8
@stab_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Contents of %s section:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Symnum n_type n_othr n_desc n_value  n_strx String\0A\00", align 1
@STRDXOFF = common dso_local global i32 0, align 4
@TYPEOFF = common dso_local global i32 0, align 4
@OTHEROFF = common dso_local global i32 0, align 4
@DESCOFF = common dso_local global i32 0, align 4
@VALOFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"\0A%-6d \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%-6s\00", align 1
@N_UNDF = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"HdrSym\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%-6d\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" %-6d %-6d \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" %-6lu\00", align 1
@stabstr_size = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@strtab = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c" *\00", align 1
@STABSIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*)* @print_section_stabs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_section_stabs(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** @stabs, align 8
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* @stab_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32* %24, i32** %11, align 8
  %25 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, ...) @printf(i8* %25, i8* %26)
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %29

29:                                               ; preds = %128, %3
  %30 = load i32*, i32** %10, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ult i32* %30, %31
  br i1 %32, label %33, label %135

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* @STRDXOFF, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i8* @bfd_h_get_32(i32* %34, i32* %38)
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %13, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @TYPEOFF, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call zeroext i8 @bfd_h_get_8(i32* %41, i32* %45)
  store i8 %46, i8* %14, align 1
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @OTHEROFF, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call zeroext i8 @bfd_h_get_8(i32* %47, i32* %51)
  store i8 %52, i8* %15, align 1
  %53 = load i32*, i32** %4, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* @DESCOFF, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call zeroext i16 @bfd_h_get_16(i32* %53, i32* %57)
  store i16 %58, i16* %16, align 2
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32, i32* @VALOFF, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i8* @bfd_h_get_32(i32* %59, i32* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i8, i8* %14, align 1
  %69 = call i8* @bfd_get_stab_name(i8 zeroext %68)
  store i8* %69, i8** %12, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %33
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  br label %88

75:                                               ; preds = %33
  %76 = load i8, i8* %14, align 1
  %77 = zext i8 %76 to i32
  %78 = load i8, i8* @N_UNDF, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %87

83:                                               ; preds = %75
  %84 = load i8, i8* %14, align 1
  %85 = zext i8 %84 to i32
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83, %81
  br label %88

88:                                               ; preds = %87, %72
  %89 = load i8, i8* %15, align 1
  %90 = zext i8 %89 to i32
  %91 = load i16, i16* %16, align 2
  %92 = zext i16 %91 to i32
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %90, i32 %92)
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %17, align 4
  %96 = call i32 @bfd_printf_vma(i32* %94, i32 %95)
  %97 = load i64, i64* %13, align 8
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 %97)
  %99 = load i8, i8* %14, align 1
  %100 = zext i8 %99 to i32
  %101 = load i8, i8* @N_UNDF, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %88
  %105 = load i32, i32* %9, align 4
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %127

109:                                              ; preds = %88
  %110 = load i64, i64* %13, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = add i64 %110, %112
  %114 = load i64, i64* @stabstr_size, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %109
  %117 = load i8*, i8** @strtab, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = add i64 %118, %120
  %122 = getelementptr inbounds i8, i8* %117, i64 %121
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %122)
  br label %126

124:                                              ; preds = %109
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %116
  br label %127

127:                                              ; preds = %126, %104
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* @STABSIZE, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32* %132, i32** %10, align 8
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %29

135:                                              ; preds = %29
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %137 = load i32, i32* %9, align 4
  %138 = load i32*, i32** %6, align 8
  store i32 %137, i32* %138, align 4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @bfd_h_get_32(i32*, i32*) #1

declare dso_local zeroext i8 @bfd_h_get_8(i32*, i32*) #1

declare dso_local zeroext i16 @bfd_h_get_16(i32*, i32*) #1

declare dso_local i8* @bfd_get_stab_name(i8 zeroext) #1

declare dso_local i32 @bfd_printf_vma(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
