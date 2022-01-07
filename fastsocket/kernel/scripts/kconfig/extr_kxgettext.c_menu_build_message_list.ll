; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_menu_build_message_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/scripts/kconfig/extr_kxgettext.c_menu_build_message_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu = type { i32*, %struct.menu*, %struct.menu*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"Root Menu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.menu*)* @menu_build_message_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_build_message_list(%struct.menu* %0) #0 {
  %2 = alloca %struct.menu*, align 8
  %3 = alloca %struct.menu*, align 8
  store %struct.menu* %0, %struct.menu** %2, align 8
  %4 = load %struct.menu*, %struct.menu** %2, align 8
  %5 = call i32 @menu_get_prompt(%struct.menu* %4)
  %6 = load %struct.menu*, %struct.menu** %2, align 8
  %7 = getelementptr inbounds %struct.menu, %struct.menu* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = icmp eq %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.menu*, %struct.menu** %2, align 8
  %13 = getelementptr inbounds %struct.menu, %struct.menu* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  br label %17

17:                                               ; preds = %11, %10
  %18 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %10 ], [ %16, %11 ]
  %19 = load %struct.menu*, %struct.menu** %2, align 8
  %20 = getelementptr inbounds %struct.menu, %struct.menu* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @message__add(i32 %5, i32* null, i8* %18, i32 %21)
  %23 = load %struct.menu*, %struct.menu** %2, align 8
  %24 = getelementptr inbounds %struct.menu, %struct.menu* %23, i32 0, i32 5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %56

27:                                               ; preds = %17
  %28 = load %struct.menu*, %struct.menu** %2, align 8
  %29 = call i64 @menu_has_help(%struct.menu* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load %struct.menu*, %struct.menu** %2, align 8
  %33 = call i32 @menu_get_help(%struct.menu* %32)
  %34 = load %struct.menu*, %struct.menu** %2, align 8
  %35 = getelementptr inbounds %struct.menu, %struct.menu* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.menu*, %struct.menu** %2, align 8
  %40 = getelementptr inbounds %struct.menu, %struct.menu* %39, i32 0, i32 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = icmp eq %struct.TYPE_4__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  br label %50

44:                                               ; preds = %31
  %45 = load %struct.menu*, %struct.menu** %2, align 8
  %46 = getelementptr inbounds %struct.menu, %struct.menu* %45, i32 0, i32 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  br label %50

50:                                               ; preds = %44, %43
  %51 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %43 ], [ %49, %44 ]
  %52 = load %struct.menu*, %struct.menu** %2, align 8
  %53 = getelementptr inbounds %struct.menu, %struct.menu* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @message__add(i32 %33, i32* %38, i8* %51, i32 %54)
  br label %56

56:                                               ; preds = %50, %27, %17
  %57 = load %struct.menu*, %struct.menu** %2, align 8
  %58 = getelementptr inbounds %struct.menu, %struct.menu* %57, i32 0, i32 2
  %59 = load %struct.menu*, %struct.menu** %58, align 8
  store %struct.menu* %59, %struct.menu** %3, align 8
  br label %60

60:                                               ; preds = %71, %56
  %61 = load %struct.menu*, %struct.menu** %3, align 8
  %62 = icmp ne %struct.menu* %61, null
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.menu*, %struct.menu** %3, align 8
  %65 = getelementptr inbounds %struct.menu, %struct.menu* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load %struct.menu*, %struct.menu** %3, align 8
  call void @menu_build_message_list(%struct.menu* %69)
  br label %70

70:                                               ; preds = %68, %63
  br label %71

71:                                               ; preds = %70
  %72 = load %struct.menu*, %struct.menu** %3, align 8
  %73 = getelementptr inbounds %struct.menu, %struct.menu* %72, i32 0, i32 1
  %74 = load %struct.menu*, %struct.menu** %73, align 8
  store %struct.menu* %74, %struct.menu** %3, align 8
  br label %60

75:                                               ; preds = %60
  ret void
}

declare dso_local i32 @message__add(i32, i32*, i8*, i32) #1

declare dso_local i32 @menu_get_prompt(%struct.menu*) #1

declare dso_local i64 @menu_has_help(%struct.menu*) #1

declare dso_local i32 @menu_get_help(%struct.menu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
