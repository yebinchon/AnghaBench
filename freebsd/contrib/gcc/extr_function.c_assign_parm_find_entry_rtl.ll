; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_find_entry_rtl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_assign_parm_find_entry_rtl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (i32*, i64, i32, i32)*, i64 (i64, i32)*, i64 (i32*)* }
%struct.assign_parm_data_all = type { i64, i32, i32, i32, i32 }
%struct.assign_parm_data_one = type { i64, i32, i64, i32, i64, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@VOIDmode = common dso_local global i64 0, align 8
@const0_rtx = common dso_local global i64 0, align 8
@targetm = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@STACK_BYTES = common dso_local global i32 0, align 4
@current_function_decl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.assign_parm_data_all*, %struct.assign_parm_data_one*)* @assign_parm_find_entry_rtl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assign_parm_find_entry_rtl(%struct.assign_parm_data_all* %0, %struct.assign_parm_data_one* %1) #0 {
  %3 = alloca %struct.assign_parm_data_all*, align 8
  %4 = alloca %struct.assign_parm_data_one*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.assign_parm_data_all* %0, %struct.assign_parm_data_all** %3, align 8
  store %struct.assign_parm_data_one* %1, %struct.assign_parm_data_one** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %11 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @VOIDmode, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i64, i64* @const0_rtx, align 8
  %17 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %18 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %17, i32 0, i32 7
  store i64 %16, i64* %18, align 8
  %19 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %20 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %19, i32 0, i32 4
  store i64 %16, i64* %20, align 8
  br label %186

21:                                               ; preds = %2
  %22 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %23 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %26 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %29 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %32 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @FUNCTION_ARG(i32 %24, i64 %27, i32 %30, i32 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %21
  %38 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %39 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %42 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %37, %21
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %76, label %49

49:                                               ; preds = %43
  %50 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %51 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %49
  %55 = load i64 (i32*)*, i64 (i32*)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @targetm, i32 0, i32 0, i32 2), align 8
  %56 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %57 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %56, i32 0, i32 4
  %58 = call i64 %55(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %62 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %65 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %68 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @FUNCTION_ARG(i32 %63, i64 %66, i32 %69, i32 1)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %60, %54
  br label %76

76:                                               ; preds = %75, %49, %43
  %77 = load i64 (i64, i32)*, i64 (i64, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @targetm, i32 0, i32 0, i32 1), align 8
  %78 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %79 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %82 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i64 %77(i64 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i64 0, i64* %6, align 8
  br label %87

87:                                               ; preds = %86, %76
  %88 = load i64, i64* %6, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %141

90:                                               ; preds = %87
  %91 = load i32 (i32*, i64, i32, i32)*, i32 (i32*, i64, i32, i32)** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @targetm, i32 0, i32 0, i32 0), align 8
  %92 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %93 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %92, i32 0, i32 4
  %94 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %95 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %98 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %101 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 %91(i32* %93, i64 %96, i32 %99, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %106 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 8
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %140

109:                                              ; preds = %90
  %110 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %111 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %140

114:                                              ; preds = %109
  %115 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %116 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %114
  %120 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %121 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  br label %125

125:                                              ; preds = %119, %114
  %126 = phi i1 [ false, %114 ], [ %124, %119 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @gcc_assert(i32 %127)
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @STACK_BYTES, align 4
  %132 = call i32 @CEIL_ROUND(i32 %130, i32 %131)
  %133 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %134 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %136 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %139 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  br label %140

140:                                              ; preds = %125, %109, %90
  br label %141

141:                                              ; preds = %140, %87
  %142 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %143 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %146 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = load i64, i64* %6, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %141
  %152 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %153 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  br label %156

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %151
  %157 = phi i32 [ %154, %151 ], [ 0, %155 ]
  %158 = load i32, i32* @current_function_decl, align 4
  %159 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %160 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %159, i32 0, i32 3
  %161 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %162 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %161, i32 0, i32 5
  %163 = call i32 @locate_and_pad_parm(i64 %144, i32 %147, i32 %148, i32 %157, i32 %158, i32* %160, %struct.TYPE_10__* %162)
  %164 = load %struct.assign_parm_data_all*, %struct.assign_parm_data_all** %3, align 8
  %165 = getelementptr inbounds %struct.assign_parm_data_all, %struct.assign_parm_data_all* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sub nsw i32 %166, %167
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %171 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, %169
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %5, align 4
  %177 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %178 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = add nsw i32 %181, %176
  store i32 %182, i32* %180, align 8
  %183 = load i64, i64* %6, align 8
  %184 = load %struct.assign_parm_data_one*, %struct.assign_parm_data_one** %4, align 8
  %185 = getelementptr inbounds %struct.assign_parm_data_one, %struct.assign_parm_data_one* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %156, %15
  ret void
}

declare dso_local i64 @FUNCTION_ARG(i32, i64, i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @CEIL_ROUND(i32, i32) #1

declare dso_local i32 @locate_and_pad_parm(i64, i32, i32, i32, i32, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
