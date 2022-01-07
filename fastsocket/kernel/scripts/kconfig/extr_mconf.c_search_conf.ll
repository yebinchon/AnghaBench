; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_search_conf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_mconf.c_search_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32 }
%struct.gstr = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Search Configuration Parameter\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Enter CONFIG_ (sub)string to search for (with or without \22CONFIG\22)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Search Configuration\00", align 1
@search_help = common dso_local global i32 0, align 4
@dialog_input_result = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"CONFIG_\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Search Results\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @search_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_conf() #0 {
  %1 = alloca %struct.symbol**, align 8
  %2 = alloca %struct.gstr, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gstr, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = call i32 (...) @dialog_clear()
  %8 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %10 = call i32 @dialog_inputbox(i32 %8, i32 %9, i32 10, i32 75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %17 [
    i32 0, label %12
    i32 1, label %13
  ]

12:                                               ; preds = %6
  br label %18

13:                                               ; preds = %6
  %14 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* @search_help, align 4
  %16 = call i32 @show_helptext(i32 %14, i32 %15)
  br label %6

17:                                               ; preds = %6
  br label %40

18:                                               ; preds = %12
  %19 = load i8*, i8** @dialog_input_result, align 8
  store i8* %19, i8** %3, align 8
  %20 = load i8*, i8** @dialog_input_result, align 8
  %21 = call i64 @strncasecmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 7
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i8*, i8** %3, align 8
  %28 = call %struct.symbol** @sym_re_search(i8* %27)
  store %struct.symbol** %28, %struct.symbol*** %1, align 8
  %29 = load %struct.symbol**, %struct.symbol*** %1, align 8
  %30 = call i32 @get_relations_str(%struct.symbol** %29)
  %31 = getelementptr inbounds %struct.gstr, %struct.gstr* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = bitcast %struct.gstr* %2 to i8*
  %33 = bitcast %struct.gstr* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load %struct.symbol**, %struct.symbol*** %1, align 8
  %35 = call i32 @free(%struct.symbol** %34)
  %36 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %37 = call i32 @str_get(%struct.gstr* %2)
  %38 = call i32 @show_textbox(i32 %36, i32 %37, i32 0, i32 0)
  %39 = call i32 @str_free(%struct.gstr* %2)
  br label %40

40:                                               ; preds = %26, %17
  ret void
}

declare dso_local i32 @dialog_clear(...) #1

declare dso_local i32 @dialog_inputbox(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @show_helptext(i32, i32) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local %struct.symbol** @sym_re_search(i8*) #1

declare dso_local i32 @get_relations_str(%struct.symbol**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.symbol**) #1

declare dso_local i32 @show_textbox(i32, i32, i32, i32) #1

declare dso_local i32 @str_get(%struct.gstr*) #1

declare dso_local i32 @str_free(%struct.gstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
