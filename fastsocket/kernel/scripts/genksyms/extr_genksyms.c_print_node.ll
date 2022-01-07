; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_print_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/genksyms/extr_genksyms.c_print_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i64, i32 }

@SYM_NORMAL = common dso_local global i64 0, align 8
@symbol_type_name = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.string_list*)* @print_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_node(i32* %0, %struct.string_list* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.string_list*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.string_list* %1, %struct.string_list** %4, align 8
  %5 = load %struct.string_list*, %struct.string_list** %4, align 8
  %6 = getelementptr inbounds %struct.string_list, %struct.string_list* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SYM_NORMAL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load i8**, i8*** @symbol_type_name, align 8
  %12 = load %struct.string_list*, %struct.string_list** %4, align 8
  %13 = getelementptr inbounds %struct.string_list, %struct.string_list* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i8*, i8** %11, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @putc(i8 signext %18, i32* %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @putc(i8 signext 35, i32* %21)
  br label %23

23:                                               ; preds = %10, %2
  %24 = load %struct.string_list*, %struct.string_list** %4, align 8
  %25 = getelementptr inbounds %struct.string_list, %struct.string_list* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @fputs(i32 %26, i32* %27)
  ret void
}

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @fputs(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
