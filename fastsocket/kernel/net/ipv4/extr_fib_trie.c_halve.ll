; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_halve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_fib_trie.c_halve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trie = type { i32 }
%struct.tnode = type { i32, i32, i64*, i32 }
%struct.node = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"In halve\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tnode* (%struct.trie*, %struct.tnode*)* @halve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tnode* @halve(%struct.trie* %0, %struct.tnode* %1) #0 {
  %3 = alloca %struct.tnode*, align 8
  %4 = alloca %struct.trie*, align 8
  %5 = alloca %struct.tnode*, align 8
  %6 = alloca %struct.tnode*, align 8
  %7 = alloca %struct.node*, align 8
  %8 = alloca %struct.node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tnode*, align 8
  %12 = alloca %struct.tnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.trie* %0, %struct.trie** %4, align 8
  store %struct.tnode* %1, %struct.tnode** %5, align 8
  %15 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %15, %struct.tnode** %6, align 8
  %16 = load %struct.tnode*, %struct.tnode** %5, align 8
  %17 = call i32 @tnode_child_length(%struct.tnode* %16)
  store i32 %17, i32* %10, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.tnode*, %struct.tnode** %6, align 8
  %20 = getelementptr inbounds %struct.tnode, %struct.tnode* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tnode*, %struct.tnode** %6, align 8
  %23 = getelementptr inbounds %struct.tnode, %struct.tnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.tnode*, %struct.tnode** %6, align 8
  %26 = getelementptr inbounds %struct.tnode, %struct.tnode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = call %struct.tnode* @tnode_new(i32 %21, i32 %24, i32 %28)
  store %struct.tnode* %29, %struct.tnode** %5, align 8
  %30 = load %struct.tnode*, %struct.tnode** %5, align 8
  %31 = icmp ne %struct.tnode* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.tnode* @ERR_PTR(i32 %34)
  store %struct.tnode* %35, %struct.tnode** %3, align 8
  br label %187

36:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %78, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %81

41:                                               ; preds = %37
  %42 = load %struct.tnode*, %struct.tnode** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.node* @tnode_get_child(%struct.tnode* %42, i32 %43)
  store %struct.node* %44, %struct.node** %7, align 8
  %45 = load %struct.tnode*, %struct.tnode** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  %48 = call %struct.node* @tnode_get_child(%struct.tnode* %45, i32 %47)
  store %struct.node* %48, %struct.node** %8, align 8
  %49 = load %struct.node*, %struct.node** %7, align 8
  %50 = icmp ne %struct.node* %49, null
  br i1 %50, label %51, label %77

51:                                               ; preds = %41
  %52 = load %struct.node*, %struct.node** %8, align 8
  %53 = icmp ne %struct.node* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load %struct.node*, %struct.node** %7, align 8
  %56 = getelementptr inbounds %struct.node, %struct.node* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.tnode*, %struct.tnode** %5, align 8
  %59 = getelementptr inbounds %struct.tnode, %struct.tnode* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.tnode*, %struct.tnode** %5, align 8
  %62 = getelementptr inbounds %struct.tnode, %struct.tnode* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = call %struct.tnode* @tnode_new(i32 %57, i32 %64, i32 1)
  store %struct.tnode* %65, %struct.tnode** %11, align 8
  %66 = load %struct.tnode*, %struct.tnode** %11, align 8
  %67 = icmp ne %struct.tnode* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %54
  br label %151

69:                                               ; preds = %54
  %70 = load %struct.trie*, %struct.trie** %4, align 8
  %71 = load %struct.tnode*, %struct.tnode** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sdiv i32 %72, 2
  %74 = load %struct.tnode*, %struct.tnode** %11, align 8
  %75 = bitcast %struct.tnode* %74 to %struct.node*
  %76 = call i32 @put_child(%struct.trie* %70, %struct.tnode* %71, i32 %73, %struct.node* %75)
  br label %77

77:                                               ; preds = %69, %51, %41
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %9, align 4
  br label %37

81:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %144, %81
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %147

86:                                               ; preds = %82
  %87 = load %struct.tnode*, %struct.tnode** %6, align 8
  %88 = load i32, i32* %9, align 4
  %89 = call %struct.node* @tnode_get_child(%struct.tnode* %87, i32 %88)
  store %struct.node* %89, %struct.node** %7, align 8
  %90 = load %struct.tnode*, %struct.tnode** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  %93 = call %struct.node* @tnode_get_child(%struct.tnode* %90, i32 %92)
  store %struct.node* %93, %struct.node** %8, align 8
  %94 = load %struct.node*, %struct.node** %7, align 8
  %95 = icmp eq %struct.node* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %86
  %97 = load %struct.node*, %struct.node** %8, align 8
  %98 = icmp eq %struct.node* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %144

100:                                              ; preds = %96
  %101 = load %struct.trie*, %struct.trie** %4, align 8
  %102 = load %struct.tnode*, %struct.tnode** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sdiv i32 %103, 2
  %105 = load %struct.node*, %struct.node** %8, align 8
  %106 = call i32 @put_child(%struct.trie* %101, %struct.tnode* %102, i32 %104, %struct.node* %105)
  br label %144

107:                                              ; preds = %86
  %108 = load %struct.node*, %struct.node** %8, align 8
  %109 = icmp eq %struct.node* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load %struct.trie*, %struct.trie** %4, align 8
  %112 = load %struct.tnode*, %struct.tnode** %5, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sdiv i32 %113, 2
  %115 = load %struct.node*, %struct.node** %7, align 8
  %116 = call i32 @put_child(%struct.trie* %111, %struct.tnode* %112, i32 %114, %struct.node* %115)
  br label %144

117:                                              ; preds = %107
  %118 = load %struct.tnode*, %struct.tnode** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sdiv i32 %119, 2
  %121 = call %struct.node* @tnode_get_child(%struct.tnode* %118, i32 %120)
  %122 = bitcast %struct.node* %121 to %struct.tnode*
  store %struct.tnode* %122, %struct.tnode** %12, align 8
  %123 = load %struct.trie*, %struct.trie** %4, align 8
  %124 = load %struct.tnode*, %struct.tnode** %5, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sdiv i32 %125, 2
  %127 = call i32 @put_child(%struct.trie* %123, %struct.tnode* %124, i32 %126, %struct.node* null)
  %128 = load %struct.trie*, %struct.trie** %4, align 8
  %129 = load %struct.tnode*, %struct.tnode** %12, align 8
  %130 = load %struct.node*, %struct.node** %7, align 8
  %131 = call i32 @put_child(%struct.trie* %128, %struct.tnode* %129, i32 0, %struct.node* %130)
  %132 = load %struct.trie*, %struct.trie** %4, align 8
  %133 = load %struct.tnode*, %struct.tnode** %12, align 8
  %134 = load %struct.node*, %struct.node** %8, align 8
  %135 = call i32 @put_child(%struct.trie* %132, %struct.tnode* %133, i32 1, %struct.node* %134)
  %136 = load %struct.trie*, %struct.trie** %4, align 8
  %137 = load %struct.tnode*, %struct.tnode** %5, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sdiv i32 %138, 2
  %140 = load %struct.trie*, %struct.trie** %4, align 8
  %141 = load %struct.tnode*, %struct.tnode** %12, align 8
  %142 = call %struct.node* @resize(%struct.trie* %140, %struct.tnode* %141)
  %143 = call i32 @put_child(%struct.trie* %136, %struct.tnode* %137, i32 %139, %struct.node* %142)
  br label %144

144:                                              ; preds = %117, %110, %100, %99
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 2
  store i32 %146, i32* %9, align 4
  br label %82

147:                                              ; preds = %82
  %148 = load %struct.tnode*, %struct.tnode** %6, align 8
  %149 = call i32 @tnode_free_safe(%struct.tnode* %148)
  %150 = load %struct.tnode*, %struct.tnode** %5, align 8
  store %struct.tnode* %150, %struct.tnode** %3, align 8
  br label %187

151:                                              ; preds = %68
  %152 = load %struct.tnode*, %struct.tnode** %5, align 8
  %153 = call i32 @tnode_child_length(%struct.tnode* %152)
  store i32 %153, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %154

154:                                              ; preds = %178, %151
  %155 = load i32, i32* %14, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %154
  %159 = load %struct.tnode*, %struct.tnode** %5, align 8
  %160 = getelementptr inbounds %struct.tnode, %struct.tnode* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i64, i64* %161, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %158
  %168 = load %struct.tnode*, %struct.tnode** %5, align 8
  %169 = getelementptr inbounds %struct.tnode, %struct.tnode* %168, i32 0, i32 2
  %170 = load i64*, i64** %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i64, i64* %170, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to %struct.tnode*
  %176 = call i32 @tnode_free(%struct.tnode* %175)
  br label %177

177:                                              ; preds = %167, %158
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %154

181:                                              ; preds = %154
  %182 = load %struct.tnode*, %struct.tnode** %5, align 8
  %183 = call i32 @tnode_free(%struct.tnode* %182)
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  %186 = call %struct.tnode* @ERR_PTR(i32 %185)
  store %struct.tnode* %186, %struct.tnode** %3, align 8
  br label %187

187:                                              ; preds = %181, %147, %32
  %188 = load %struct.tnode*, %struct.tnode** %3, align 8
  ret %struct.tnode* %188
}

declare dso_local i32 @tnode_child_length(%struct.tnode*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.tnode* @tnode_new(i32, i32, i32) #1

declare dso_local %struct.tnode* @ERR_PTR(i32) #1

declare dso_local %struct.node* @tnode_get_child(%struct.tnode*, i32) #1

declare dso_local i32 @put_child(%struct.trie*, %struct.tnode*, i32, %struct.node*) #1

declare dso_local %struct.node* @resize(%struct.trie*, %struct.tnode*) #1

declare dso_local i32 @tnode_free_safe(%struct.tnode*) #1

declare dso_local i32 @tnode_free(%struct.tnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
