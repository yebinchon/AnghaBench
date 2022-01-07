; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_get_java_object_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_jv-lang.c_get_java_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.symtab = type { i32 }

@java_object_type = common dso_local global %struct.type* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"java.lang.Object\00", align 1
@STRUCT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"cannot find java.lang.Object\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @get_java_object_type() #0 {
  %1 = alloca %struct.symbol*, align 8
  %2 = load %struct.type*, %struct.type** @java_object_type, align 8
  %3 = icmp eq %struct.type* %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load i32, i32* @STRUCT_DOMAIN, align 4
  %6 = call %struct.symbol* @lookup_symbol(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* null, i32 %5, i32* null, %struct.symtab** null)
  store %struct.symbol* %6, %struct.symbol** %1, align 8
  %7 = load %struct.symbol*, %struct.symbol** %1, align 8
  %8 = icmp eq %struct.symbol* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 @error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %4
  %12 = load %struct.symbol*, %struct.symbol** %1, align 8
  %13 = call %struct.type* @SYMBOL_TYPE(%struct.symbol* %12)
  store %struct.type* %13, %struct.type** @java_object_type, align 8
  br label %14

14:                                               ; preds = %11, %0
  %15 = load %struct.type*, %struct.type** @java_object_type, align 8
  ret %struct.type* %15
}

declare dso_local %struct.symbol* @lookup_symbol(i8*, i32*, i32, i32*, %struct.symtab**) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(%struct.symbol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
