; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_set_section_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_exec.c_set_section_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.section_table*, %struct.section_table* }
%struct.section_table = type { i64, i64, i32 }

@.str = private unnamed_addr constant [50 x i8] c"Must specify section name and its virtual address\00", align 1
@exec_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@exec_bfd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Section %s not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_section_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_section_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.section_table*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i8*, i8** %3, align 8
  store i8* %16, i8** %6, align 8
  br label %17

17:                                               ; preds = %24, %15
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @isspace(i8 signext %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %3, align 8
  br label %17

27:                                               ; preds = %17
  %28 = load i8*, i8** %3, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = call i64 @parse_and_eval_address(i8* %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.section_table*, %struct.section_table** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @exec_ops, i32 0, i32 1), align 8
  store %struct.section_table* %36, %struct.section_table** %5, align 8
  br label %37

37:                                               ; preds = %85, %27
  %38 = load %struct.section_table*, %struct.section_table** %5, align 8
  %39 = load %struct.section_table*, %struct.section_table** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @exec_ops, i32 0, i32 0), align 8
  %40 = icmp ult %struct.section_table* %38, %39
  br i1 %40, label %41, label %88

41:                                               ; preds = %37
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* @exec_bfd, align 4
  %44 = load %struct.section_table*, %struct.section_table** %5, align 8
  %45 = getelementptr inbounds %struct.section_table, %struct.section_table* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @bfd_section_name(i32 %43, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @strncmp(i8* %42, i8* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %84, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @exec_bfd, align 4
  %53 = load %struct.section_table*, %struct.section_table** %5, align 8
  %54 = getelementptr inbounds %struct.section_table, %struct.section_table* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @bfd_section_name(i32 %52, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %51
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.section_table*, %struct.section_table** %5, align 8
  %66 = getelementptr inbounds %struct.section_table, %struct.section_table* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %64, %67
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.section_table*, %struct.section_table** %5, align 8
  %71 = getelementptr inbounds %struct.section_table, %struct.section_table* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load %struct.section_table*, %struct.section_table** %5, align 8
  %76 = getelementptr inbounds %struct.section_table, %struct.section_table* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %63
  %82 = call i32 @exec_files_info(%struct.TYPE_3__* @exec_ops)
  br label %83

83:                                               ; preds = %81, %63
  br label %103

84:                                               ; preds = %51, %41
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.section_table*, %struct.section_table** %5, align 8
  %87 = getelementptr inbounds %struct.section_table, %struct.section_table* %86, i32 1
  store %struct.section_table* %87, %struct.section_table** %5, align 8
  br label %37

88:                                               ; preds = %37
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = icmp uge i64 %90, 100
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 99, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %88
  %94 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %95 = load i8*, i8** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @strncpy(i8* %94, i8* %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 %99
  store i8 0, i8* %100, align 1
  %101 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %102 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %93, %83
  ret void
}

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i64 @parse_and_eval_address(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @bfd_section_name(i32, i32) #1

declare dso_local i32 @exec_files_info(%struct.TYPE_3__*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
