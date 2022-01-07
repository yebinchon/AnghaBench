; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/byacc/extr_error.c_unterminated_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/byacc/extr_error.c_unterminated_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ainfo = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"%s: e - line %d of \22%s\22, unterminated action\0A\00", align 1
@myname = common dso_local global i8* null, align 8
@input_file_name = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unterminated_action(%struct.ainfo* %0) #0 {
  %2 = alloca %struct.ainfo*, align 8
  store %struct.ainfo* %0, %struct.ainfo** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** @myname, align 8
  %5 = load %struct.ainfo*, %struct.ainfo** %2, align 8
  %6 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i8*, i8** @input_file_name, align 8
  %9 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %4, i32 %7, i8* %8)
  %10 = load %struct.ainfo*, %struct.ainfo** %2, align 8
  %11 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ainfo*, %struct.ainfo** %2, align 8
  %14 = getelementptr inbounds %struct.ainfo, %struct.ainfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @print_pos(i32 %12, i32 %15)
  %17 = call i32 @done(i32 1)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @print_pos(i32, i32) #1

declare dso_local i32 @done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
