; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_get_markers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_get_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf_info = type { i64, i64, %struct.TYPE_3__*, %struct.TYPE_3__*, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.module = type { i8**, i64, i32 }

@STT_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"__mstrtab_\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s\09%s\09%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elf_info*, %struct.module*)* @get_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_markers(%struct.elf_info* %0, %struct.module* %1) #0 {
  %3 = alloca %struct.elf_info*, align 8
  %4 = alloca %struct.module*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.elf_info* %0, %struct.elf_info** %3, align 8
  store %struct.module* %1, %struct.module** %4, align 8
  %14 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %15 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %18 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %19
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %5, align 8
  %21 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %22 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %6, align 8
  %30 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %31 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %2
  br label %157

35:                                               ; preds = %2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %9, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  store i64 0, i64* %10, align 8
  %36 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %37 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %36, i32 0, i32 3
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %7, align 8
  br label %39

39:                                               ; preds = %80, %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %41 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %42 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = icmp ult %struct.TYPE_3__* %40, %43
  br i1 %44, label %45, label %83

45:                                               ; preds = %39
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @ELF_ST_TYPE(i32 %48)
  %50 = load i64, i64* @STT_OBJECT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %79

52:                                               ; preds = %45
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %57 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %52
  %61 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %62 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = call i32 @strncmp(i64 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %60
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %72 = icmp eq %struct.TYPE_3__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %8, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %9, align 8
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %10, align 8
  br label %79

79:                                               ; preds = %75, %60, %52, %45
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 1
  store %struct.TYPE_3__* %82, %struct.TYPE_3__** %7, align 8
  br label %39

83:                                               ; preds = %39
  %84 = load i64, i64* %10, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %157

87:                                               ; preds = %83
  %88 = load i64, i64* %10, align 8
  %89 = mul i64 8, %88
  %90 = trunc i64 %89 to i32
  %91 = call i8* @malloc(i32 %90)
  %92 = call i8** @NOFAIL(i8* %91)
  %93 = load %struct.module*, %struct.module** %4, align 8
  %94 = getelementptr inbounds %struct.module, %struct.module* %93, i32 0, i32 0
  store i8** %92, i8*** %94, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load %struct.module*, %struct.module** %4, align 8
  %97 = getelementptr inbounds %struct.module, %struct.module* %96, i32 0, i32 1
  store i64 %95, i64* %97, align 8
  store i64 0, i64* %10, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  store %struct.TYPE_3__* %98, %struct.TYPE_3__** %7, align 8
  br label %99

99:                                               ; preds = %154, %87
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %102 = icmp ule %struct.TYPE_3__* %100, %101
  br i1 %102, label %103, label %157

103:                                              ; preds = %99
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i64 @ELF_ST_TYPE(i32 %106)
  %108 = load i64, i64* @STT_OBJECT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %153

110:                                              ; preds = %103
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %115 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp eq i64 %113, %116
  br i1 %117, label %118, label %153

118:                                              ; preds = %110
  %119 = load %struct.elf_info*, %struct.elf_info** %3, align 8
  %120 = getelementptr inbounds %struct.elf_info, %struct.elf_info* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = call i32 @strncmp(i64 %125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %153, label %128

128:                                              ; preds = %118
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %129, i64 %133
  store i8* %134, i8** %11, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = call i8* @strchr(i8* %135, i8 signext 0)
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  store i8* %137, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %138 = load i8*, i8** %11, align 8
  %139 = load %struct.module*, %struct.module** %4, align 8
  %140 = getelementptr inbounds %struct.module, %struct.module* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %12, align 8
  %143 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %138, i32 %141, i8* %142)
  %144 = load i8*, i8** %13, align 8
  %145 = call i8** @NOFAIL(i8* %144)
  %146 = load i8*, i8** %13, align 8
  %147 = load %struct.module*, %struct.module** %4, align 8
  %148 = getelementptr inbounds %struct.module, %struct.module* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = load i64, i64* %10, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %10, align 8
  %152 = getelementptr inbounds i8*, i8** %149, i64 %150
  store i8* %146, i8** %152, align 8
  br label %153

153:                                              ; preds = %128, %118, %110, %103
  br label %154

154:                                              ; preds = %153
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 1
  store %struct.TYPE_3__* %156, %struct.TYPE_3__** %7, align 8
  br label %99

157:                                              ; preds = %34, %86, %99
  ret void
}

declare dso_local i64 @ELF_ST_TYPE(i32) #1

declare dso_local i32 @strncmp(i64, i8*, i32) #1

declare dso_local i8** @NOFAIL(i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
