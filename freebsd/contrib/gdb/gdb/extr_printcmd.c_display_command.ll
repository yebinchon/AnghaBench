; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_display_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_printcmd.c_display_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.display = type { i32, %struct.format_data, i64, %struct.display*, i64, %struct.expression* }
%struct.format_data = type { i8, i8, i64 }
%struct.expression = type { i32 }

@innermost_block = common dso_local global i64 0, align 8
@display_chain = common dso_local global %struct.display* null, align 8
@display_number = common dso_local global i64 0, align 8
@target_has_execution = common dso_local global i64 0, align 8
@TUI_FAILURE = common dso_local global i64 0, align 8
@tui_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @display_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @display_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.format_data, align 8
  %6 = alloca %struct.expression*, align 8
  %7 = alloca %struct.display*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.format_data, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %96

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (...) @do_displays()
  br label %96

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 47
  br i1 %21, label %22, label %57

22:                                               ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %3, align 8
  %25 = call { i64, i64 } @decode_format(i8** %3, i32 0, i32 0)
  %26 = bitcast %struct.format_data* %9 to { i64, i64 }*
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = extractvalue { i64, i64 } %25, 0
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = extractvalue { i64, i64 } %25, 1
  store i64 %30, i64* %29, align 8
  %31 = bitcast %struct.format_data* %5 to i8*
  %32 = bitcast %struct.format_data* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %22
  %38 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 1
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 1
  store i8 120, i8* %43, align 1
  br label %44

44:                                               ; preds = %42, %37, %22
  %45 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 105
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 115
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %44
  %55 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 0
  store i8 98, i8* %55, align 8
  br label %56

56:                                               ; preds = %54, %49
  br label %61

57:                                               ; preds = %17
  %58 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 1
  store i8 0, i8* %58, align 1
  %59 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 0
  store i8 0, i8* %59, align 8
  %60 = getelementptr inbounds %struct.format_data, %struct.format_data* %5, i32 0, i32 2
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %56
  store i64 0, i64* @innermost_block, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = call %struct.expression* @parse_expression(i8* %62)
  store %struct.expression* %63, %struct.expression** %6, align 8
  %64 = call i64 @xmalloc(i32 56)
  %65 = inttoptr i64 %64 to %struct.display*
  store %struct.display* %65, %struct.display** %7, align 8
  %66 = load %struct.expression*, %struct.expression** %6, align 8
  %67 = load %struct.display*, %struct.display** %7, align 8
  %68 = getelementptr inbounds %struct.display, %struct.display* %67, i32 0, i32 5
  store %struct.expression* %66, %struct.expression** %68, align 8
  %69 = load i64, i64* @innermost_block, align 8
  %70 = load %struct.display*, %struct.display** %7, align 8
  %71 = getelementptr inbounds %struct.display, %struct.display* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load %struct.display*, %struct.display** @display_chain, align 8
  %73 = load %struct.display*, %struct.display** %7, align 8
  %74 = getelementptr inbounds %struct.display, %struct.display* %73, i32 0, i32 3
  store %struct.display* %72, %struct.display** %74, align 8
  %75 = load i64, i64* @display_number, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* @display_number, align 8
  %77 = load %struct.display*, %struct.display** %7, align 8
  %78 = getelementptr inbounds %struct.display, %struct.display* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.display*, %struct.display** %7, align 8
  %80 = getelementptr inbounds %struct.display, %struct.display* %79, i32 0, i32 1
  %81 = bitcast %struct.format_data* %80 to i8*
  %82 = bitcast %struct.format_data* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  %83 = load %struct.display*, %struct.display** %7, align 8
  %84 = getelementptr inbounds %struct.display, %struct.display* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.display*, %struct.display** %7, align 8
  store %struct.display* %85, %struct.display** @display_chain, align 8
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %61
  %89 = load i64, i64* @target_has_execution, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.display*, %struct.display** %7, align 8
  %93 = call i32 @do_one_display(%struct.display* %92)
  br label %94

94:                                               ; preds = %91, %88, %61
  %95 = call i32 (...) @dont_repeat()
  br label %96

96:                                               ; preds = %15, %94, %2
  ret void
}

declare dso_local i32 @do_displays(...) #1

declare dso_local { i64, i64 } @decode_format(i8**, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @do_one_display(%struct.display*) #1

declare dso_local i32 @dont_repeat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
