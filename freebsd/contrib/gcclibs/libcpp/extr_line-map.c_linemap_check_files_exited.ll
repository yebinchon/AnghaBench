; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_check_files_exited.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_line-map.c_linemap_check_files_exited.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line_maps = type { i32, %struct.line_map* }
%struct.line_map = type { i8* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"line-map.c: file \22%s\22 entered but not left\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @linemap_check_files_exited(%struct.line_maps* %0) #0 {
  %2 = alloca %struct.line_maps*, align 8
  %3 = alloca %struct.line_map*, align 8
  store %struct.line_maps* %0, %struct.line_maps** %2, align 8
  %4 = load %struct.line_maps*, %struct.line_maps** %2, align 8
  %5 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %4, i32 0, i32 1
  %6 = load %struct.line_map*, %struct.line_map** %5, align 8
  %7 = load %struct.line_maps*, %struct.line_maps** %2, align 8
  %8 = getelementptr inbounds %struct.line_maps, %struct.line_maps* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.line_map, %struct.line_map* %6, i64 %11
  store %struct.line_map* %12, %struct.line_map** %3, align 8
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.line_map*, %struct.line_map** %3, align 8
  %15 = call i32 @MAIN_FILE_P(%struct.line_map* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.line_map*, %struct.line_map** %3, align 8
  %21 = getelementptr inbounds %struct.line_map, %struct.line_map* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %24

24:                                               ; preds = %18
  %25 = load %struct.line_maps*, %struct.line_maps** %2, align 8
  %26 = load %struct.line_map*, %struct.line_map** %3, align 8
  %27 = call %struct.line_map* @INCLUDED_FROM(%struct.line_maps* %25, %struct.line_map* %26)
  store %struct.line_map* %27, %struct.line_map** %3, align 8
  br label %13

28:                                               ; preds = %13
  ret void
}

declare dso_local i32 @MAIN_FILE_P(%struct.line_map*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.line_map* @INCLUDED_FROM(%struct.line_maps*, %struct.line_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
