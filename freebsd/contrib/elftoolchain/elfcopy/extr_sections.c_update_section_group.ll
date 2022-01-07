; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_update_section_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/elfcopy/extr_sections.c_update_section_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elfcopy = type { i64*, i32 }
%struct.section = type { i64*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64* }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"elf_getshnum failed: %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"gelf_getehdr() failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"elf_getdata() failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@SHN_UNDEF = common dso_local global i64 0, align 8
@GRP_COMDAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elfcopy*, %struct.section*)* @update_section_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_section_group(%struct.elfcopy* %0, %struct.section* %1) #0 {
  %3 = alloca %struct.elfcopy*, align 8
  %4 = alloca %struct.section*, align 8
  %5 = alloca %struct.TYPE_5__, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.elfcopy* %0, %struct.elfcopy** %3, align 8
  store %struct.section* %1, %struct.section** %4, align 8
  %13 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %14 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @elf_getshnum(i32 %15, i64* %10)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EXIT_FAILURE, align 4
  %20 = call i32 @elf_errmsg(i32 -1)
  %21 = call i32 @errx(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.section*, %struct.section** %4, align 8
  %24 = getelementptr inbounds %struct.section, %struct.section* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32* @gelf_getshdr(i32 %25, %struct.TYPE_5__* %5)
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = call i32 @elf_errmsg(i32 -1)
  %31 = call i32 @errx(i32 %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.section*, %struct.section** %4, align 8
  %34 = getelementptr inbounds %struct.section, %struct.section* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.TYPE_6__* @elf_getdata(i32 %35, i32* null)
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %6, align 8
  %37 = icmp eq %struct.TYPE_6__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @elf_errmsg(i32 -1)
  %41 = call i32 @errx(i32 %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %32
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %148

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  store i32 4, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  store i64* %56, i64** %7, align 8
  %57 = load i64*, i64** %7, align 8
  %58 = load i64, i64* %57, align 8
  %59 = and i64 %58, 1
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %148

62:                                               ; preds = %53
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64* @malloc(i32 %64)
  %66 = load %struct.section*, %struct.section** %4, align 8
  %67 = getelementptr inbounds %struct.section, %struct.section* %66, i32 0, i32 0
  store i64* %65, i64** %67, align 8
  %68 = icmp eq i64* %65, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EXIT_FAILURE, align 4
  %71 = call i32 @err(i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %62
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.section*, %struct.section** %4, align 8
  %76 = getelementptr inbounds %struct.section, %struct.section* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.section*, %struct.section** %4, align 8
  %78 = getelementptr inbounds %struct.section, %struct.section* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  store i64* %79, i64** %8, align 8
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %8, align 8
  store i64 %81, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %84, %86
  store i32 %87, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %88

88:                                               ; preds = %142, %72
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %145

92:                                               ; preds = %88
  %93 = load i64*, i64** %7, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SHN_UNDEF, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %136

100:                                              ; preds = %92
  %101 = load i64*, i64** %7, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %136

108:                                              ; preds = %100
  %109 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %110 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load i64*, i64** %7, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %111, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %108
  %121 = load %struct.elfcopy*, %struct.elfcopy** %3, align 8
  %122 = getelementptr inbounds %struct.elfcopy, %struct.elfcopy* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i64*, i64** %7, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i64, i64* %123, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** %8, align 8
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  store i64 %130, i64* %135, align 8
  br label %141

136:                                              ; preds = %108, %100, %92
  %137 = load %struct.section*, %struct.section** %4, align 8
  %138 = getelementptr inbounds %struct.section, %struct.section* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 4
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %136, %120
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %11, align 4
  br label %88

145:                                              ; preds = %88
  %146 = load %struct.section*, %struct.section** %4, align 8
  %147 = getelementptr inbounds %struct.section, %struct.section* %146, i32 0, i32 2
  store i32 1, i32* %147, align 4
  br label %148

148:                                              ; preds = %145, %61, %46
  ret void
}

declare dso_local i32 @elf_getshnum(i32, i64*) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @elf_errmsg(i32) #1

declare dso_local i32* @gelf_getshdr(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @elf_getdata(i32, i32*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
