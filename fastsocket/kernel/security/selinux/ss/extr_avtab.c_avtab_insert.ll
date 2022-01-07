; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_insert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/ss/extr_avtab.c_avtab_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { %struct.avtab_node**, i32 }
%struct.avtab_node = type { %struct.TYPE_2__, %struct.avtab_node* }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.avtab_key = type { i32, i64, i64, i64 }
%struct.avtab_datum = type { i32 }

@AVTAB_ENABLED = common dso_local global i32 0, align 4
@AVTAB_ENABLED_OLD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.avtab*, %struct.avtab_key*, %struct.avtab_datum*)* @avtab_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avtab_insert(%struct.avtab* %0, %struct.avtab_key* %1, %struct.avtab_datum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.avtab*, align 8
  %6 = alloca %struct.avtab_key*, align 8
  %7 = alloca %struct.avtab_datum*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.avtab_node*, align 8
  %10 = alloca %struct.avtab_node*, align 8
  %11 = alloca %struct.avtab_node*, align 8
  %12 = alloca i32, align 4
  store %struct.avtab* %0, %struct.avtab** %5, align 8
  store %struct.avtab_key* %1, %struct.avtab_key** %6, align 8
  store %struct.avtab_datum* %2, %struct.avtab_datum** %7, align 8
  %13 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %14 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AVTAB_ENABLED, align 4
  %17 = load i32, i32* @AVTAB_ENABLED_OLD, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.avtab*, %struct.avtab** %5, align 8
  %22 = icmp ne %struct.avtab* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.avtab*, %struct.avtab** %5, align 8
  %25 = getelementptr inbounds %struct.avtab, %struct.avtab* %24, i32 0, i32 0
  %26 = load %struct.avtab_node**, %struct.avtab_node*** %25, align 8
  %27 = icmp ne %struct.avtab_node** %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %162

31:                                               ; preds = %23
  %32 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %33 = load %struct.avtab*, %struct.avtab** %5, align 8
  %34 = getelementptr inbounds %struct.avtab, %struct.avtab* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @avtab_hash(%struct.avtab_key* %32, i32 %35)
  store i32 %36, i32* %8, align 4
  store %struct.avtab_node* null, %struct.avtab_node** %9, align 8
  %37 = load %struct.avtab*, %struct.avtab** %5, align 8
  %38 = getelementptr inbounds %struct.avtab, %struct.avtab* %37, i32 0, i32 0
  %39 = load %struct.avtab_node**, %struct.avtab_node*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %39, i64 %41
  %43 = load %struct.avtab_node*, %struct.avtab_node** %42, align 8
  store %struct.avtab_node* %43, %struct.avtab_node** %10, align 8
  br label %44

44:                                               ; preds = %143, %31
  %45 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %46 = icmp ne %struct.avtab_node* %45, null
  br i1 %46, label %47, label %148

47:                                               ; preds = %44
  %48 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %49 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %52 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %50, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %47
  %57 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %58 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %61 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %59, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %56
  %66 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %67 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %70 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %68, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %65
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %77 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %75, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EEXIST, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %162

85:                                               ; preds = %74, %65, %56, %47
  %86 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %87 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %90 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %85
  br label %148

95:                                               ; preds = %85
  %96 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %97 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %100 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %98, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %95
  %105 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %106 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %109 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %107, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %148

114:                                              ; preds = %104, %95
  %115 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %116 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %119 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %117, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %114
  %124 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %125 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %128 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = icmp eq i64 %126, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %123
  %133 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %134 = getelementptr inbounds %struct.avtab_key, %struct.avtab_key* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %137 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %135, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %148

142:                                              ; preds = %132, %123, %114
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  store %struct.avtab_node* %144, %struct.avtab_node** %9, align 8
  %145 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %146 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %145, i32 0, i32 1
  %147 = load %struct.avtab_node*, %struct.avtab_node** %146, align 8
  store %struct.avtab_node* %147, %struct.avtab_node** %10, align 8
  br label %44

148:                                              ; preds = %141, %113, %94, %44
  %149 = load %struct.avtab*, %struct.avtab** %5, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.avtab_node*, %struct.avtab_node** %9, align 8
  %152 = load %struct.avtab_node*, %struct.avtab_node** %10, align 8
  %153 = load %struct.avtab_key*, %struct.avtab_key** %6, align 8
  %154 = load %struct.avtab_datum*, %struct.avtab_datum** %7, align 8
  %155 = call %struct.avtab_node* @avtab_insert_node(%struct.avtab* %149, i32 %150, %struct.avtab_node* %151, %struct.avtab_node* %152, %struct.avtab_key* %153, %struct.avtab_datum* %154)
  store %struct.avtab_node* %155, %struct.avtab_node** %11, align 8
  %156 = load %struct.avtab_node*, %struct.avtab_node** %11, align 8
  %157 = icmp ne %struct.avtab_node* %156, null
  br i1 %157, label %161, label %158

158:                                              ; preds = %148
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %162

161:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %161, %158, %82, %28
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @avtab_hash(%struct.avtab_key*, i32) #1

declare dso_local %struct.avtab_node* @avtab_insert_node(%struct.avtab*, i32, %struct.avtab_node*, %struct.avtab_node*, %struct.avtab_key*, %struct.avtab_datum*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
