; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_read_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/mod/extr_modpost.c_read_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module = type { i32 }
%struct.symbol = type { i32, i32 }

@have_vmlinux = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"parse error in symbol dump file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @read_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_dump(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.module*, align 8
  %16 = alloca %struct.symbol*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %6, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i8* @grab_file(i8* %17, i64* %5)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %111

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %91, %22
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i8* @get_next_line(i64* %6, i8* %24, i64 %25)
  store i8* %26, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %108

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = call i8* @strchr(i8* %29, i8 signext 9)
  store i8* %30, i8** %9, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %109

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %9, align 8
  store i8 0, i8* %34, align 1
  %36 = load i8*, i8** %9, align 8
  %37 = call i8* @strchr(i8* %36, i8 signext 9)
  store i8* %37, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %109

40:                                               ; preds = %33
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  store i8 0, i8* %41, align 1
  %43 = load i8*, i8** %10, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 9)
  store i8* %44, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i8*, i8** %12, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %12, align 8
  store i8 0, i8* %47, align 1
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i8*, i8** %12, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 9)
  store i8* %54, i8** %13, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i8*, i8** %13, align 8
  store i8 0, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %52, %49
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @strtoul(i8* %59, i8** %11, i32 16)
  store i32 %60, i32* %14, align 4
  %61 = load i8*, i8** %9, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %58
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %11, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %65, %58
  br label %109

76:                                               ; preds = %70
  %77 = load i8*, i8** %10, align 8
  %78 = call %struct.module* @find_module(i8* %77)
  store %struct.module* %78, %struct.module** %15, align 8
  %79 = load %struct.module*, %struct.module** %15, align 8
  %80 = icmp ne %struct.module* %79, null
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = call i64 @is_vmlinux(i8* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 1, i32* @have_vmlinux, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i8*, i8** %10, align 8
  %88 = call %struct.module* @new_module(i8* %87)
  store %struct.module* %88, %struct.module** %15, align 8
  %89 = load %struct.module*, %struct.module** %15, align 8
  %90 = getelementptr inbounds %struct.module, %struct.module* %89, i32 0, i32 0
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %86, %76
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.module*, %struct.module** %15, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @export_no(i8* %94)
  %96 = call %struct.symbol* @sym_add_exported(i8* %92, %struct.module* %93, i32 %95)
  store %struct.symbol* %96, %struct.symbol** %16, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.symbol*, %struct.symbol** %16, align 8
  %99 = getelementptr inbounds %struct.symbol, %struct.symbol* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.symbol*, %struct.symbol** %16, align 8
  %101 = getelementptr inbounds %struct.symbol, %struct.symbol* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.module*, %struct.module** %15, align 8
  %104 = load i32, i32* %14, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @export_no(i8* %105)
  %107 = call i32 @sym_update_crc(i8* %102, %struct.module* %103, i32 %104, i32 %106)
  br label %23

108:                                              ; preds = %23
  br label %111

109:                                              ; preds = %75, %39, %32
  %110 = call i32 @fatal(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %108, %21
  ret void
}

declare dso_local i8* @grab_file(i8*, i64*) #1

declare dso_local i8* @get_next_line(i64*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.module* @find_module(i8*) #1

declare dso_local i64 @is_vmlinux(i8*) #1

declare dso_local %struct.module* @new_module(i8*) #1

declare dso_local %struct.symbol* @sym_add_exported(i8*, %struct.module*, i32) #1

declare dso_local i32 @export_no(i8*) #1

declare dso_local i32 @sym_update_crc(i8*, %struct.module*, i32, i32) #1

declare dso_local i32 @fatal(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
